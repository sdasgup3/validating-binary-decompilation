void leaf() {
  __asm__("vpermilps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}