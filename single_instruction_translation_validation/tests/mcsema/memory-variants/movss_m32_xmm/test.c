void leaf() {
  __asm__("movss %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}