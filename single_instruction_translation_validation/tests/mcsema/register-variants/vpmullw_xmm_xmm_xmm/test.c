void leaf() {
  __asm__("vpmullw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}