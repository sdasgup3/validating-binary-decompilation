void leaf() {
  __asm__("vpminsw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}