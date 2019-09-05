void leaf() {
  __asm__("vaddsubps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}