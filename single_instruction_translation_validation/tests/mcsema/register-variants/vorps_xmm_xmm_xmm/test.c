void leaf() {
  __asm__("vorps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}