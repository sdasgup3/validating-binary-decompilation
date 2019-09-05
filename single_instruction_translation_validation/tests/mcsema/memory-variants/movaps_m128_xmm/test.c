void leaf() {
  __asm__("movaps %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}