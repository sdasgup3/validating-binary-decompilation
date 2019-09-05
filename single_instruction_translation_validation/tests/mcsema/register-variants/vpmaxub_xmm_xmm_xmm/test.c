void leaf() {
  __asm__("vpmaxub %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}