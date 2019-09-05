void leaf() {
  __asm__("xorps %xmm2, %xmm1");
  }

void main() {
  leaf();
}