void leaf() {
  __asm__("vpmullw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}