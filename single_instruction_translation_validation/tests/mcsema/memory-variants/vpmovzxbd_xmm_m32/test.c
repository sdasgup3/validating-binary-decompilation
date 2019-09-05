void leaf() {
  __asm__("vpmovzxbd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}