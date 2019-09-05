void leaf() {
  __asm__("vpmovzxbw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}