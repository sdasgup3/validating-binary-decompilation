void leaf() {
  __asm__("vmovhlps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}