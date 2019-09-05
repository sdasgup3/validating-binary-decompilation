void leaf() {
  __asm__("vmovhps %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}