void leaf() {
  __asm__("movsd %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}