void leaf() {
  __asm__("vmovntps %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}