void leaf() {
  __asm__("vpmovzxwd %xmm2, %xmm1");
  }

void main() {
  leaf();
}