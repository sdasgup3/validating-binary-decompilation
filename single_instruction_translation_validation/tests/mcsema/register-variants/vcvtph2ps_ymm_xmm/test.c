void leaf() {
  __asm__("vcvtph2ps %xmm2, %ymm1");
  }

void main() {
  leaf();
}