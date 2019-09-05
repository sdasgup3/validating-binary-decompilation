void leaf() {
  __asm__("vpmullw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}