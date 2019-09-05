void leaf() {
  __asm__("vpminsb -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}