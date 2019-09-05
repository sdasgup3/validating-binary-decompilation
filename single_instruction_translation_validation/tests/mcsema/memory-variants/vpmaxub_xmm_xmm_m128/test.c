void leaf() {
  __asm__("vpmaxub -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}