void leaf() {
  __asm__("vpmovzxbq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}