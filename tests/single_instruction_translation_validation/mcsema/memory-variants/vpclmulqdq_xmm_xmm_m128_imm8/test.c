void main() {
  __asm__("vpclmulqdq $0xa, -32(%rbp), %xmm2, %xmm1");
}