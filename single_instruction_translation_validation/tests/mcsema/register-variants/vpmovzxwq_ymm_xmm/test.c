void leaf() {
  __asm__("vpmovzxwq %xmm2, %ymm1");
  }

void main() {
  leaf();
}