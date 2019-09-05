void leaf() {
  __asm__("vpmovzxbw -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}