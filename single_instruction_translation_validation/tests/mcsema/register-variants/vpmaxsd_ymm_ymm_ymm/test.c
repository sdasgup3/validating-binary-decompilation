void leaf() {
  __asm__("vpmaxsd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}