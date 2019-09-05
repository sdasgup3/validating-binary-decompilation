void leaf() {
  __asm__("vcvttps2dq %ymm2, %ymm1");
  }

void main() {
  leaf();
}