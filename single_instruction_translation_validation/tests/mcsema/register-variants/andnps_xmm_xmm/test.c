void leaf() {
  __asm__("andnps %xmm2, %xmm1");
  }

void main() {
  leaf();
}