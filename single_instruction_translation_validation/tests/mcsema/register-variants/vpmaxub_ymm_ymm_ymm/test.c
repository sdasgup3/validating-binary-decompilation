void leaf() {
  __asm__("vpmaxub %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}