void leaf() {
  __asm__("vpmulld %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}