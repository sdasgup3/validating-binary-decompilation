void leaf() {
  __asm__("vpmaxsb %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}