void leaf() {
  __asm__("vpmulhuw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}