void leaf() {
  __asm__("vcvtdq2pd %xmm2, %xmm1");
  }

void main() {
  leaf();
}