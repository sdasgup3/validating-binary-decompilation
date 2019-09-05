void leaf() {
  __asm__("vpmulhrsw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}