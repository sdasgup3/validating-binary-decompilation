void leaf() {
  __asm__("vpmovzxdq %xmm2, %xmm1");
  }

void main() {
  leaf();
}