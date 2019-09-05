void leaf() {
  __asm__("movlps %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}