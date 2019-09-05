void leaf() {
  __asm__("vpmulld -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}