void main() {
  __asm__("pclmulqdq $0xa, -16(%rbp), %xmm1");
}