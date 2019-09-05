void leaf() {
  __asm__("vpmovzxwd %xmm2, %ymm1");
  }

void main() {
  leaf();
}