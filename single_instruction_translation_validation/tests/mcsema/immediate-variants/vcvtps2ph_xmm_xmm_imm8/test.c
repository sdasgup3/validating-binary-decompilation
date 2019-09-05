void leaf() {
  __asm__("vcvtps2ph $0x77, %xmm2, %xmm1");
  }

void main() {
  leaf();
}