void leaf() {
  __asm__("vpmovzxbw %xmm2, %xmm1");
  }

void main() {
  leaf();
}