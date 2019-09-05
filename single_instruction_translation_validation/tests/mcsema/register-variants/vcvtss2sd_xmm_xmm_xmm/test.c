void leaf() {
  __asm__("vcvtss2sd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}