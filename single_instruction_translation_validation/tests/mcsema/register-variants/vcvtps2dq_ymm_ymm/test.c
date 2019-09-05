void leaf() {
  __asm__("vcvtps2dq %ymm2, %ymm1");
  }

void main() {
  leaf();
}