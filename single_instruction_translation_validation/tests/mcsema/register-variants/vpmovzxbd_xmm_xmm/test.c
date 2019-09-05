void leaf() {
  __asm__("vpmovzxbd %xmm2, %xmm1");
  }

void main() {
  leaf();
}