void leaf() {
  __asm__("vandps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}