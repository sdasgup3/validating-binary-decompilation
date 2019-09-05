void leaf() {
  __asm__("movntps %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}