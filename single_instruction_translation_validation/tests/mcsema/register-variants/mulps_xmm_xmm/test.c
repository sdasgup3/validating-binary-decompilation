void leaf() {
  __asm__("mulps %xmm2, %xmm1");
  }

void main() {
  leaf();
}