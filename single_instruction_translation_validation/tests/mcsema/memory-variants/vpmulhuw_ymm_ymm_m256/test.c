void leaf() {
  __asm__("vpmulhuw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}