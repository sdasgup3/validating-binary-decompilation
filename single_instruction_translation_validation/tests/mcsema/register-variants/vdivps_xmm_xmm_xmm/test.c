void leaf() {
  __asm__("vdivps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}