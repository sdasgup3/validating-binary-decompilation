void leaf() {
  __asm__("vmovdqa %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}