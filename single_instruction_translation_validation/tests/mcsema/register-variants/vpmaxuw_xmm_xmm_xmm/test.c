void leaf() {
  __asm__("vpmaxuw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}