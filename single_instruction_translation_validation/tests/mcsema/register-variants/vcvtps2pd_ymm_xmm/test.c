void leaf() {
  __asm__("vcvtps2pd %xmm2, %ymm1");
  }

void main() {
  leaf();
}