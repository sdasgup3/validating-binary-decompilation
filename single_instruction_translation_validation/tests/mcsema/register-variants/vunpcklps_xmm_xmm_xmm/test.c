void leaf() {
  __asm__("vunpcklps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}