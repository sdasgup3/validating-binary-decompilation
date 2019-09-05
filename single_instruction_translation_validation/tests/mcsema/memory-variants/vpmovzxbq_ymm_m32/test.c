void leaf() {
  __asm__("vpmovzxbq -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}