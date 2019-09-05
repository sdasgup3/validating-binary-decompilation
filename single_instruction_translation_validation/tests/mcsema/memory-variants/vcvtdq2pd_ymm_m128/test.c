void leaf() {
  __asm__("vcvtdq2pd -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}