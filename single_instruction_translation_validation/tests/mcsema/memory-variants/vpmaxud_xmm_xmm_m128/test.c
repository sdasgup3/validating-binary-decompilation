void leaf() {
  __asm__("vpmaxud -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}