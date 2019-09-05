void leaf() {
  __asm__("movhps %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}