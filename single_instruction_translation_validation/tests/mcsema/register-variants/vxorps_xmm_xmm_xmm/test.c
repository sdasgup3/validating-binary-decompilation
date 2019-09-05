void leaf() {
  __asm__("vxorps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}