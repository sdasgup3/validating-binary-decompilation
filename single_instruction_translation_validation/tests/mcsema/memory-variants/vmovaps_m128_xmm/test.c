void leaf() {
  __asm__("vmovaps %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}