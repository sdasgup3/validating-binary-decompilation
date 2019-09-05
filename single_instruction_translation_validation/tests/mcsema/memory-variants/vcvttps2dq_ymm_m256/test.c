void leaf() {
  __asm__("vcvttps2dq -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}