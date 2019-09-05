void leaf() {
  __asm__("vpermilps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}