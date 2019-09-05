void leaf() {
  __asm__("vcvtdq2ps -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}