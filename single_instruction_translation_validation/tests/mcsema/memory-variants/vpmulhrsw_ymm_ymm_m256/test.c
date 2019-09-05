void leaf() {
  __asm__("vpmulhrsw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}