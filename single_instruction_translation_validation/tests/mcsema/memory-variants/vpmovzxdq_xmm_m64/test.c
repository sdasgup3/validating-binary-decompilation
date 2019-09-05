void leaf() {
  __asm__("vpmovzxdq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}