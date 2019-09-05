void leaf() {
  __asm__("movlhps %xmm2, %xmm1");
  }

void main() {
  leaf();
}