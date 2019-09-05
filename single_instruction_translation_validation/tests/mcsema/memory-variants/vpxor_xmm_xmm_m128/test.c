void leaf() {
  __asm__("vpxor -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}