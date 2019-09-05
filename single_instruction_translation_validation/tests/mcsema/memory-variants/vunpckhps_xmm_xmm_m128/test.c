void leaf() {
  __asm__("vunpckhps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}