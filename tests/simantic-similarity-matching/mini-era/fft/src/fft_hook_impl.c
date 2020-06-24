// Prerequisites:
//    git clone https://github.com/sld-columbia/esp.git
//    git checkout epochs
// clang -S -O0  -emit-llvm   fft_hook_impl.c -I /home/sdasgup3/Github/esp/soft/leon3/drivers/include/  -o fft_hook_impl.ll

#include "libesp.h"
#include <limits.h>

typedef unsigned long long token_t;
typedef double native_t;
#define fx2float fixed64_to_double
#define float2fx double_to_fixed64
#define FX_IL 42

/* <<--params-def-->> */
#define LOG_LEN 10
#define LEN (1 << LOG_LEN)
#define DO_BITREV 1

/* <<--params-->> */
const int32_t do_bitrev = DO_BITREV;
const int32_t len = LEN;
const int32_t log_len = LOG_LEN;

#define NACC 1

esp_thread_info_t cfg_000[] = {
	{
		.run = true,
		.devname = "fft.0",
		.type = fft,
		/* <<--descriptor-->> */
		.desc.fft_desc.do_bitrev = DO_BITREV,
		.desc.fft_desc.log_len = LOG_LEN,
		.desc.fft_desc.src_offset = 0,
		.desc.fft_desc.dst_offset = 0,
		.desc.fft_desc.esp.coherence = ACC_COH_NONE,
		.desc.fft_desc.esp.p2p_store = 0,
		.desc.fft_desc.esp.p2p_nsrcs = 0,
		.desc.fft_desc.esp.p2p_srcs = {"", "", "", ""},
	}
};

// #include "test/fft_test.h"

unsigned int fft_rev(unsigned int v)
{
	unsigned int r = v;
	int s = sizeof(v) * CHAR_BIT - 1;

	for (v >>= 1; v; v >>= 1) {
		r <<= 1;
		r |= v & 1;
		s--;
	}
	r <<= s;
	return r;
}

void fft_bit_reverse(float *w, unsigned int n, unsigned int bits)
{
	unsigned int i, s, shift;

	s = sizeof(i) * CHAR_BIT - 1;
	shift = s - bits + 1;

	for (i = 0; i < n; i++) {
		unsigned int r;
		float t_real, t_imag;

		r = fft_rev(i);
		r >>= shift;

		if (i < r) {
			t_real = w[2 * i];
			t_imag = w[2 * i + 1];
			w[2 * i] = w[2 * r];
			w[2 * i + 1] = w[2 * r + 1];
			w[2 * r] = t_real;
			w[2 * r + 1] = t_imag;
		}
	}

}

int fft_comp(float *data, unsigned int n, unsigned int logn, int sign, bool rev)
{
	unsigned int transform_length;
	unsigned int a, b, i, j, bit;
	float theta, t_real, t_imag, w_real, w_imag, s, t, s2, z_real, z_imag;

	if (rev)
		fft_bit_reverse(data, n, logn);

	transform_length = 1;

	/* calculation */
	for (bit = 0; bit < logn; bit++) {
		w_real = 1.0;
		w_imag = 0.0;

		theta = 1.0 * sign * M_PI / (float) transform_length;

		s = sin(theta);
		t = sin(0.5 * theta);
		s2 = 2.0 * t * t;

		for (a = 0; a < transform_length; a++) {
			for (b = 0; b < n; b += 2 * transform_length) {
				i = b + a;
				j = b + a + transform_length;

				z_real = data[2 * j];
				z_imag = data[2 * j + 1];

				t_real = w_real * z_real - w_imag * z_imag;
				t_imag = w_real * z_imag + w_imag * z_real;

				/* write the result */
				data[2*j]	= data[2*i] - t_real;
				data[2*j + 1]	= data[2*i + 1] - t_imag;
				data[2*i]	+= t_real;
				data[2*i + 1]	+= t_imag;
			}

			/* adjust w */
			t_real = w_real - (s * w_imag + s2 * w_real);
			t_imag = w_imag + (s * w_real - s2 * w_imag);
			w_real = t_real;
			w_imag = t_imag;

		}
		transform_length *= 2;
	}

	return 0;
}


static unsigned in_words_adj;
static unsigned out_words_adj;
static unsigned in_len;
static unsigned out_len;
static unsigned in_size;
static unsigned out_size;
static unsigned out_offset;
static unsigned size;

const float ERR_TH = 0.05;

/* User-defined code */
static int validate_buffer(token_t *out, float *gold)
{
	int j;
	unsigned errors = 0;

	for (j = 0; j < 2 * len; j++) {
		native_t val = fx2float(out[j], FX_IL);
		if ((fabs(gold[j] - val) / fabs(gold[j])) > ERR_TH)
			errors++;
	}

	printf("  + Relative error > %.02f for %d output values out of %d\n", ERR_TH, errors, 2 * len);

	return errors;
}


/* User-defined code */
static void init_buffer(token_t *in, float *gold)
{
	int j;
	const float LO = -1.0;
	const float HI = 1.0;

	srand((unsigned int) time(NULL));

	for (j = 0; j < 2 * len; j++) {
		float scaling_factor = (float) rand () / (float) RAND_MAX;
		gold[j] = LO + scaling_factor * (HI - LO);
	}

	// preprocess with bitreverse (fast in software anyway)
	if (!do_bitrev)
		fft_bit_reverse(gold, len, log_len);

	// convert input to fixed point
	for (j = 0; j < 2 * len; j++)
		in[j] = float2fx((native_t) gold[j], FX_IL);

	// Compute golden output
	fft_comp(gold, len, log_len,  -1,  do_bitrev);
}


/* User-defined code */
static void init_parameters()
{
	if (DMA_WORD_PER_BEAT(sizeof(token_t)) == 0) {
		in_words_adj = 2 * len;
		out_words_adj = 2 * len;
	} else {
		in_words_adj = round_up(2 * len, DMA_WORD_PER_BEAT(sizeof(token_t)));
		out_words_adj = round_up(2 * len, DMA_WORD_PER_BEAT(sizeof(token_t)));
	}
	in_len = in_words_adj;
	out_len =  out_words_adj;
	in_size = in_len * sizeof(token_t);
	out_size = out_len * sizeof(token_t);
	out_offset = 0;
	size = (out_offset * sizeof(token_t)) + out_size;
}


token_t *fft_hook()
{
	float *gold;
	token_t *buf;

        const int ERROR_COUNT_TH = 0.001;

	init_parameters();

	buf = (token_t *) esp_alloc(size);
	gold = malloc(out_len * sizeof(float));

	init_buffer(buf, gold);

	esp_run(cfg_000, NACC);

	int errors = validate_buffer(&buf[out_offset], gold);
  // TO DO: error check with erros

	free(gold);
	esp_cleanup();

  return &buf[out_offset];
}
