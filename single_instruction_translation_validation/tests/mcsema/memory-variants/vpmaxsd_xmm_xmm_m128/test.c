void leaf() {
  __asm__("vpmaxsd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}