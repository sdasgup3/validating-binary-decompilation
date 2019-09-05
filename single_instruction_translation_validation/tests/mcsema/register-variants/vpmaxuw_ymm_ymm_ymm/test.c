void leaf() {
  __asm__("vpmaxuw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}