void leaf() {
  __asm__("ptest -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}