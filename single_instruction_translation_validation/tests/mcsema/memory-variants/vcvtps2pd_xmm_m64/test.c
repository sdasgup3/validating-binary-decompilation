void leaf() {
  __asm__("vcvtps2pd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}