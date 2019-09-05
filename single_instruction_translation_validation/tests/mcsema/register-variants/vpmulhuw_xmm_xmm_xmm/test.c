void leaf() {
  __asm__("vpmulhuw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}