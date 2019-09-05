void leaf() {
  __asm__("vpmovzxwq %xmm2, %xmm1");
  }

void main() {
  leaf();
}