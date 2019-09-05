void leaf() {
  __asm__("vcvtph2ps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}