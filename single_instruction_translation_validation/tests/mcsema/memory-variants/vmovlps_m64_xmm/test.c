void leaf() {
  __asm__("vmovlps %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}