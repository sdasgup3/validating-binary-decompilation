void leaf() {
  __asm__("vaddsubps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}