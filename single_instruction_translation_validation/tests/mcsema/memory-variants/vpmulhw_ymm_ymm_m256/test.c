void leaf() {
  __asm__("vpmulhw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}