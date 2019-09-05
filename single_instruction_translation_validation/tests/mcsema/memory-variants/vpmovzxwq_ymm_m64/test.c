void leaf() {
  __asm__("vpmovzxwq -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}