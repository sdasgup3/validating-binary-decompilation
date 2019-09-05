void leaf() {
  __asm__("vpmovzxdq -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}