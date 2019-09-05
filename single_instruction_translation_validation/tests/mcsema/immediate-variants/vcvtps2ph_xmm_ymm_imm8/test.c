void leaf() {
  __asm__("vcvtps2ph $0x77, %ymm1, %xmm1");
  }

void main() {
  leaf();
}