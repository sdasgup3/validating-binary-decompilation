void leaf() {
  __asm__("vpmaddwd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}