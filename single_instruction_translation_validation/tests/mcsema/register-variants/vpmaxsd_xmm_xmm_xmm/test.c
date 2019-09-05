void leaf() {
  __asm__("vpmaxsd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}