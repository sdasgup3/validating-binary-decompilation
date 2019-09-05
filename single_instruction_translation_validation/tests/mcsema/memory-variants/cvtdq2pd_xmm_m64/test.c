void leaf() {
  __asm__("cvtdq2pd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}