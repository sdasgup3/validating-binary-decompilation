void leaf() {
  __asm__("vmulps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}