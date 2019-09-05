void leaf() {
  __asm__("vcvtdq2ps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}