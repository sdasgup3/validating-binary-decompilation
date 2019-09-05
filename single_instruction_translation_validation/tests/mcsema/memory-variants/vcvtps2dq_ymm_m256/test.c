void leaf() {
  __asm__("vcvtps2dq -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}