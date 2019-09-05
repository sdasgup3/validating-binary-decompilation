void leaf() {
  __asm__("vcvtdq2pd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}