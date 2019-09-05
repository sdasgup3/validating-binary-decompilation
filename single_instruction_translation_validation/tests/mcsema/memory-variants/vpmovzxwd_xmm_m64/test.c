void leaf() {
  __asm__("vpmovzxwd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}