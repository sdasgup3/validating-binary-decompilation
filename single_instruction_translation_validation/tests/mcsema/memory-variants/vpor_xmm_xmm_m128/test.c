void leaf() {
  __asm__("vpor -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}