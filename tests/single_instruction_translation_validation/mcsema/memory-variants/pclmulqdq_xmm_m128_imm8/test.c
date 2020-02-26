void main() {
  __asm__("pclmulqdq $0xa, -32(%rbp), %xmm1");
}