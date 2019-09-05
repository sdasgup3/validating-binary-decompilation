void leaf() {
  __asm__("vpmaxub -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}