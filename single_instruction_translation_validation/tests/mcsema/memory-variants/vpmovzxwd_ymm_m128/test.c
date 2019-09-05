void leaf() {
  __asm__("vpmovzxwd -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}