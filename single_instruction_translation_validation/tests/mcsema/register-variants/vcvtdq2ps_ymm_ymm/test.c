void leaf() {
  __asm__("vcvtdq2ps %ymm2, %ymm1");
  }

void main() {
  leaf();
}