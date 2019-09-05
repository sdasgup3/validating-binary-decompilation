void leaf() {
  __asm__("vcvtdq2pd %ymm2, %ymm1");
  }

void main() {
  leaf();
}