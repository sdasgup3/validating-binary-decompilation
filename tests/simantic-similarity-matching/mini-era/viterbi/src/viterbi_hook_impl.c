// Prerequisites:
//    git clone https://github.com/sld-columbia/esp.git
//    git checkout epochs
// clang -S -O0  -emit-llvm vitebi_hook_impl.c -I /home/sdasgup3/Github/esp/soft/ariane/drivers/include/  -o vitebi_hook_impl.ll

#include "libesp.h"

typedef int8_t token_t;

/* <<--params-def-->> */
#define CBPS 48
#define NTRACEBACK 5
#define DATA_BITS 288

/* <<--params-->> */
const int32_t cbps = CBPS;
const int32_t ntraceback = NTRACEBACK;
const int32_t data_bits = DATA_BITS;

#define NACC 1



static unsigned in_words_adj;
static unsigned out_words_adj;
static unsigned in_len;
static unsigned out_len;
static unsigned in_size;
static unsigned out_size;
static unsigned out_offset;
static unsigned size;

#include "do_decoding.c" 

/* User-defined code */
static void init_parameters()
{
	if (DMA_WORD_PER_BEAT(sizeof(token_t)) == 0) {
		in_words_adj = 24852;
		out_words_adj = 18585;
	} else {
		in_words_adj = round_up(24852, DMA_WORD_PER_BEAT(sizeof(token_t)));
		out_words_adj = round_up(18585, DMA_WORD_PER_BEAT(sizeof(token_t)));
	}
	in_len = in_words_adj * (1);
	out_len =  out_words_adj * (1);
	in_size = in_len * sizeof(token_t);
	out_size = out_len * sizeof(token_t);
	out_offset = in_len;
	size = (out_offset * sizeof(token_t)) + out_size;
}


void viterbi_hook()(int in_n_data_bits, int in_cbps, int in_ntraceback, unsigned char *inMemory, unsigned char *outMemory)
{

	int errors;

	token_t *buf;

	init_parameters();

	buf = (token_t *) esp_alloc(size);
	
	for (int i = 0; i < in_len; ++i) {
		buf[i] = inMemory[i];
	}

	for (int i = in_len; i < in_len+out_len; ++i) {
		buf[i] = 0;
	}

	esp_thread_info_t cfg_000[] = {
	{
		.run = true,
		.devname = "vitdodec.0",
		.type = vitdodec,
		.hw_buf = buf,
		/* <<--descriptor-->> */
		.desc.vitdodec_desc.cbps = in_cbps,
		.desc.vitdodec_desc.ntraceback = in_ntraceback,
		.desc.vitdodec_desc.data_bits = in_n_data_bits,
		.desc.vitdodec_desc.src_offset = 0,
		.desc.vitdodec_desc.dst_offset = 0,
		.desc.vitdodec_desc.esp.coherence = ACC_COH_NONE,
		.desc.vitdodec_desc.esp.p2p_store = 0,
		.desc.vitdodec_desc.esp.p2p_nsrcs = 0,
		.desc.vitdodec_desc.esp.p2p_srcs = {"", "", "", ""},
	}
	};
	esp_run(cfg_000, NACC);

	for (int i = 0; i < out_len; ++i) {
		outMemory[i] = buf[i+in_len];
	}

	esp_free(buf);
}
