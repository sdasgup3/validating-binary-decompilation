void leaf() {
  __asm__("vpmulhrsw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}