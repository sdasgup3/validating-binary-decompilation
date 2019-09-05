void leaf() {
  __asm__("vpmulhrsw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}