void leaf() {
  __asm__("vcvtps2pd %xmm2, %xmm1");
  }

void main() {
  leaf();
}