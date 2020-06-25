/*
 * Copyright 1995 Phil Karn, KA9Q
 * Copyright 2008 Free Software Foundation, Inc.
 * 2014 Added SSE2 implementation Bogdan Diaconescu
 *
 * This file is part of GNU Radio
 *
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * GNU Radio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with GNU Radio; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

/*
 * Viterbi decoder for K=7 rate=1/2 convolutional code
 * Some modifications from original Karn code by Matt Ettus
 * Major modifications by adding SSE2 code by Bogdan Diaconescu
 */
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>

#define TRACEBACK_MAX 24
// GLOBAL VARIABLES
typedef union branchtab27_u {
	unsigned char c[32];
} t_branchtab27;
t_branchtab27 d_branchtab27_generic[2];
//unsigned char d_metric0_generic[64] __attribute__ ((aligned(16)));
//unsigned char d_metric1_generic[64] __attribute__ ((aligned(16)));
//unsigned char d_path0_generic[64] __attribute__ ((aligned(16)));
//unsigned char d_path1_generic[64] __attribute__ ((aligned(16)));



void do_decoding(int in_n_data_bits, int in_cbps, int in_ntraceback, unsigned char *inMemory, unsigned char *outMemory)
{
	int in_count = 0;
	int out_count = 0;
	int n_decoded = 0;

	/* int* inWords = (int*)inMemory; */

	/* int  in_cbps        = inWords[  0]; // inMemory[    0] */
	/* int  in_ntraceback  = inWords[  1]; // inMemory[    4] */
	/* int  in_n_data_bits = inWords[  2]; // inMemory[    8] */
	unsigned char* d_brtab27[2] = {      &(inMemory[    0]), 
		&(inMemory[   32]) };
	unsigned char*  in_depuncture_pattern     = &(inMemory[   64]);
	uint8_t* depd_data                 = &(inMemory[   72]);
	uint8_t* l_decoded                 = &(outMemory[   0]);

	uint8_t  l_metric0_generic[64];
	uint8_t  l_metric1_generic[64];
	uint8_t  l_path0_generic[64];
	uint8_t  l_path1_generic[64];
	uint8_t  l_mmresult[64];
	uint8_t  l_ppresult[TRACEBACK_MAX][64];
	int      l_store_pos = 0;

	// This is the "reset" portion:
	//  Do this before the real operation so local memories are "cleared to zero"
	// d_store_pos = 0;
	for (int i = 0; i < 64; i++) {
		l_metric0_generic[i] = 0;
		l_path0_generic[i] = 0;
		l_metric1_generic[i] = 0;
		l_path1_generic[i] = 0;
		l_mmresult[i] = 0;
		for (int j = 0; j < TRACEBACK_MAX; j++) {
			l_ppresult[j][i] = 0;
		}
	}

	int viterbi_butterfly_calls = 0;
	while(n_decoded < in_n_data_bits) {
		if ((in_count % 4) == 0) { //0 or 3
			{
				unsigned char *mm0       = l_metric0_generic;
				unsigned char *mm1       = l_metric1_generic;
				unsigned char *pp0       = l_path0_generic;
				unsigned char *pp1       = l_path1_generic;
				unsigned char *symbols   = &depd_data[in_count & 0xfffffffc];

				// These are used to "virtually" rename the uses below (for symmetry; reduces code size)
				//  Really these are functionally "offset pointers" into the above arrays....
				unsigned char *metric0, *metric1;
				unsigned char *path0, *path1;

				// Operate on 4 symbols (2 bits) at a time

				unsigned char m0[16], m1[16], m2[16], m3[16], decision0[16], decision1[16], survivor0[16], survivor1[16];
				unsigned char metsv[16], metsvm[16];
				unsigned char shift0[16], shift1[16];
				unsigned char tmp0[16], tmp1[16];
				unsigned char sym0v[16], sym1v[16];
				unsigned short simd_epi16;
				unsigned int   first_symbol;
				unsigned int   second_symbol;

				// Set up for the first two symbols (0 and 1)
				metric0 = mm0;
				path0 = pp0;
				metric1 = mm1;
				path1 = pp1;
				first_symbol = 0;
				second_symbol = first_symbol+1;
				for (int j = 0; j < 16; j++) {
					sym0v[j] = symbols[first_symbol];
					sym1v[j] = symbols[second_symbol];
				}

				for (int s = 0; s < 2; s++) { // iterate across the 2 symbol groups
					// This is the basic viterbi butterfly for 2 symbols (we need therefore 2 passes for 4 total symbols)
					for (int i = 0; i < 2; i++) {
						if (symbols[first_symbol] == 2) {
							for (int j = 0; j < 16; j++) {
								metsvm[j] = d_brtab27[1][(i*16) + j] ^ sym1v[j];
								metsv[j] = 1 - metsvm[j];
							}
						}
						else if (symbols[second_symbol] == 2) {
							for (int j = 0; j < 16; j++) {
								metsvm[j] = d_brtab27[0][(i*16) + j] ^ sym0v[j];
								metsv[j] = 1 - metsvm[j];
							}
						}
						else {
							for (int j = 0; j < 16; j++) {
								metsvm[j] = (d_brtab27[0][(i*16) + j] ^ sym0v[j]) + (d_brtab27[1][(i*16) + j] ^ sym1v[j]);
								metsv[j] = 2 - metsvm[j];
							}
						}

						for (int j = 0; j < 16; j++) {
							m0[j] = metric0[(i*16) + j] + metsv[j];
							m1[j] = metric0[((i+2)*16) + j] + metsvm[j];
							m2[j] = metric0[(i*16) + j] + metsvm[j];
							m3[j] = metric0[((i+2)*16) + j] + metsv[j];
						}

						for (int j = 0; j < 16; j++) {
							decision0[j] = ((m0[j] - m1[j]) > 0) ? 0xff : 0x0;
							decision1[j] = ((m2[j] - m3[j]) > 0) ? 0xff : 0x0;
							survivor0[j] = (decision0[j] & m0[j]) | ((~decision0[j]) & m1[j]);
							survivor1[j] = (decision1[j] & m2[j]) | ((~decision1[j]) & m3[j]);
						}

						for (int j = 0; j < 16; j += 2) {
							simd_epi16 = path0[(i*16) + j];
							simd_epi16 |= path0[(i*16) + (j+1)] << 8;
							simd_epi16 <<= 1;
							shift0[j] = simd_epi16;
							shift0[j+1] = simd_epi16 >> 8;

							simd_epi16 = path0[((i+2)*16) + j];
							simd_epi16 |= path0[((i+2)*16) + (j+1)] << 8;
							simd_epi16 <<= 1;
							shift1[j] = simd_epi16;
							shift1[j+1] = simd_epi16 >> 8;
						}
						for (int j = 0; j < 16; j++) {
							shift1[j] = shift1[j] + 1;
						}

						for (int j = 0, k = 0; j < 16; j += 2, k++) {
							metric1[(2*i*16) + j] = survivor0[k];
							metric1[(2*i*16) + (j+1)] = survivor1[k];
						}
						for (int j = 0; j < 16; j++) {
							tmp0[j] = (decision0[j] & shift0[j]) | ((~decision0[j]) & shift1[j]);
						}

						for (int j = 0, k = 8; j < 16; j += 2, k++) {
							metric1[((2*i+1)*16) + j] = survivor0[k];
							metric1[((2*i+1)*16) + (j+1)] = survivor1[k];
						}
						for (int j = 0; j < 16; j++) {
							tmp1[j] = (decision1[j] & shift0[j]) | ((~decision1[j]) & shift1[j]);
						}

						for (int j = 0, k = 0; j < 16; j += 2, k++) {
							path1[(2*i*16) + j] = tmp0[k];
							path1[(2*i*16) + (j+1)] = tmp1[k];
						}
						for (int j = 0, k = 8; j < 16; j += 2, k++) {
							path1[((2*i+1)*16) + j] = tmp0[k];
							path1[((2*i+1)*16) + (j+1)] = tmp1[k];
						}
					}

					// Set up for the second two symbols (2 and 3)
					metric0 = mm1;
					path0 = pp1;
					metric1 = mm0;
					path1 = pp0;
					first_symbol = 2;
					second_symbol = first_symbol+1;
					for (int j = 0; j < 16; j++) {
						sym0v[j] = symbols[first_symbol];
						sym1v[j] = symbols[second_symbol];
					}
				}
			} // END of call to viterbi_butterfly2_generic
			viterbi_butterfly_calls++; // Do not increment until after the comparison code.

			if ((in_count > 0) && (in_count % 16) == 8) { // 8 or 11
				unsigned char c;
				{
					unsigned char *mm0       = l_metric0_generic;
					unsigned char *pp0       = l_path0_generic;
					int ntraceback = in_ntraceback;
					unsigned char *outbuf = &c;

					int i;
					int bestmetric, minmetric;
					int beststate = 0;
					int pos = 0;
					int j;

					// circular buffer with the last ntraceback paths
					l_store_pos = (l_store_pos + 1) % ntraceback;

					for (i = 0; i < 4; i++) {
						for (j = 0; j < 16; j++) {
							l_mmresult[(i*16) + j] = mm0[(i*16) + j];
							l_ppresult[l_store_pos][(i*16) + j] = pp0[(i*16) + j];
						}
					}

					// Find out the best final state
					bestmetric = l_mmresult[beststate];
					minmetric = l_mmresult[beststate];

					for (i = 1; i < 64; i++) {
						if (l_mmresult[i] > bestmetric) {
							bestmetric = l_mmresult[i];
							beststate = i;
						}
						if (l_mmresult[i] < minmetric) {
							minmetric = l_mmresult[i];
						}
					}

					// Trace back
					for (i = 0, pos = l_store_pos; i < (ntraceback - 1); i++) {
						// Obtain the state from the output bits
						// by clocking in the output bits in reverse order.
						// The state has only 6 bits
						beststate = l_ppresult[pos][beststate] >> 2;
						pos = (pos - 1 + ntraceback) % ntraceback;
					}

					// Store output byte
					*outbuf = l_ppresult[pos][beststate];

					for (i = 0; i < 4; i++) {
						for (j = 0; j < 16; j++) {
							pp0[(i*16) + j] = 0;
							mm0[(i*16) + j] = mm0[(i*16) + j] - minmetric;
						}
					}

				}

				if (out_count >= in_ntraceback) {
					for (int i= 0; i < 8; i++) {
						l_decoded[(out_count - in_ntraceback) * 8 + i] = (c >> (7 - i)) & 0x1;
						//printf("l_decoded[ %u ] written as %u\n", (out_count - in_ntraceback) * 8 + i, l_decoded[(out_count - in_ntraceback) * 8 + i]);
						n_decoded++;
					}
				}
				out_count++;
			}
		}
		in_count++;
	}

}

