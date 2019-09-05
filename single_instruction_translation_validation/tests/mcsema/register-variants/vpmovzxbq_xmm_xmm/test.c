void leaf() {
  __asm__("vpmovzxbq %xmm2, %xmm1");
  }

void main() {
  leaf();
}