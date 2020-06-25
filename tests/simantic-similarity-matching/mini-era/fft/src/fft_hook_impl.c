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
#define DO_BITREV 1

#define NACC 1

static unsigned in_words_adj;
static unsigned out_words_adj;
static unsigned in_len;
static unsigned out_len;
static unsigned in_size;
static unsigned out_size;
static unsigned out_offset;
static unsigned size;

/* User-defined code */
static void init_parameters()
{
	int len = 0x1<<14;
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


void *fft_hook(float * data, unsigned int N, unsigned int logn, int sign)
{
	
	float *gold;
	token_t *buf;

	init_parameters();

	buf = (token_t *) esp_alloc(size);

  for (int j = 0; j < 2 * N; j++) {
    buf[j] = float2fx(data[j], FX_IL);
  }
	
	esp_thread_info_t cfg_000[] = {
		{
			.run = true,
			.devname = "fft.0",
			.type = fft,
			.hw_buf = buf;
			/* <<--descriptor-->> */
			.desc.fft_desc.do_bitrev = DO_BITREV,
			.desc.fft_desc.log_len = logn,
			.desc.fft_desc.src_offset = 0,
			.desc.fft_desc.dst_offset = 0,
			.desc.fft_desc.esp.coherence = ACC_COH_NONE,
			.desc.fft_desc.esp.p2p_store = 0,
			.desc.fft_desc.esp.p2p_nsrcs = 0,
			.desc.fft_desc.esp.p2p_srcs = {"", "", "", ""},
		}
	};

	esp_run(cfg_000, NACC);
  
	for (int j = 0; j < 2 * RADAR_N; j++) {
    data[j] = (float)fx2float(buf[j], FX_IL);
  }

	esp_free(buf);

//	esp_cleanup();

}
