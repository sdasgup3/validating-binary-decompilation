void leaf() {
  __asm__("vpmulld %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}