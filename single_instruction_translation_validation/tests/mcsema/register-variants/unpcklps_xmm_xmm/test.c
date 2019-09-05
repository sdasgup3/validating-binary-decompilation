void leaf() {
  __asm__("unpcklps %xmm2, %xmm1");
  }

void main() {
  leaf();
}