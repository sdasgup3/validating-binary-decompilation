void leaf() {
  __asm__("vsubps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}