void leaf() {
  __asm__("vcvtsd2ss %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}