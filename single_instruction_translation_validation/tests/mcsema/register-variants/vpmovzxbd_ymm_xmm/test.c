void leaf() {
  __asm__("vpmovzxbd %xmm2, %ymm1");
  }

void main() {
  leaf();
}