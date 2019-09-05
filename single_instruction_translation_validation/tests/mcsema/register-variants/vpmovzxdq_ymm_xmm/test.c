void leaf() {
  __asm__("vpmovzxdq %xmm2, %ymm1");
  }

void main() {
  leaf();
}