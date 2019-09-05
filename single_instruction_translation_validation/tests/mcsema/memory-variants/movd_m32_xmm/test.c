void leaf() {
  __asm__("movd %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}