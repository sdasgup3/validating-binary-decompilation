void leaf() {
  __asm__("vpmaxsb -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}