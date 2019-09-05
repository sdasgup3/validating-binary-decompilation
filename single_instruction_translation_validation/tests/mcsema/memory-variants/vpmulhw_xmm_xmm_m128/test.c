void leaf() {
  __asm__("vpmulhw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}