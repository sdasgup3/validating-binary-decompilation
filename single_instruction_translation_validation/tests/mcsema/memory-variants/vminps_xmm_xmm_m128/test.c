void leaf() {
  __asm__("vminps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}