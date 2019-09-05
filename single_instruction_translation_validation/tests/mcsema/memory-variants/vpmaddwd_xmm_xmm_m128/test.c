void leaf() {
  __asm__("vpmaddwd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}