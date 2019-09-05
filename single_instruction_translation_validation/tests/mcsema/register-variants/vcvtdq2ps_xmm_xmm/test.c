void leaf() {
  __asm__("vcvtdq2ps %xmm2, %xmm1");
  }

void main() {
  leaf();
}