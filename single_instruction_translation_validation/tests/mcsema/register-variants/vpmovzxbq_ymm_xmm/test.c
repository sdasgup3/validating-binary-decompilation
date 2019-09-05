void leaf() {
  __asm__("vpmovzxbq %xmm2, %ymm1");
  }

void main() {
  leaf();
}