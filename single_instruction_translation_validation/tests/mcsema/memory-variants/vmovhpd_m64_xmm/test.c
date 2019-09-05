void leaf() {
  __asm__("vmovhpd %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}