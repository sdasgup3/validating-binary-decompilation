void leaf() {
  __asm__("vpmaxud %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}