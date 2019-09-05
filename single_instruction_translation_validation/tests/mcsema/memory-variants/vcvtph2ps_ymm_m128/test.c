void leaf() {
  __asm__("vcvtph2ps -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}