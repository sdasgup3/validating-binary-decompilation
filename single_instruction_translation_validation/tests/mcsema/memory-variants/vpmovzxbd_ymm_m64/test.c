void leaf() {
  __asm__("vpmovzxbd -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}