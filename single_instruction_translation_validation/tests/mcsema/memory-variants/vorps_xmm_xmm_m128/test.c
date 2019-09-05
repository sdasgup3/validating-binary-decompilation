void leaf() {
  __asm__("vorps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}