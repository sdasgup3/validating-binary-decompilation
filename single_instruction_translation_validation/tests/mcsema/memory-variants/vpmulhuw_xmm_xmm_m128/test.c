void leaf() {
  __asm__("vpmulhuw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}