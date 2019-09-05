void leaf() {
  __asm__("vcvtps2pd -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}