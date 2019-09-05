void leaf() {
  __asm__("vcvtps2ph $0x0, %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}