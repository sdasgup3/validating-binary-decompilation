void leaf() {
  __asm__("vpmovzxwq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}