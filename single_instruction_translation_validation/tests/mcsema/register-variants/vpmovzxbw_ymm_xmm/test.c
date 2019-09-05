void leaf() {
  __asm__("vpmovzxbw %xmm2, %ymm1");
  }

void main() {
  leaf();
}