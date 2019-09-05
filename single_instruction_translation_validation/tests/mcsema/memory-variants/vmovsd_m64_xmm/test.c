void leaf() {
  __asm__("vmovsd %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}