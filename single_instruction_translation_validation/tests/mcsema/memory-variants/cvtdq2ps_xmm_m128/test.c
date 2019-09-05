void leaf() {
  __asm__("cvtdq2ps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}