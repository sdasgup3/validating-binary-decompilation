void leaf() {
  __asm__("vcvtph2ps %xmm2, %xmm1");
  }

void main() {
  leaf();
}