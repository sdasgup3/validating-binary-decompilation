void leaf() {
  __asm__("vmovss %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}