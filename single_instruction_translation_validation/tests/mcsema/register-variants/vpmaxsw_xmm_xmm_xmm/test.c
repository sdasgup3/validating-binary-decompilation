void leaf() {
  __asm__("vpmaxsw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}