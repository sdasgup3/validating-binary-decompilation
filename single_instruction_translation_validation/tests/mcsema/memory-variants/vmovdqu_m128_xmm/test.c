void leaf() {
  __asm__("vmovdqu %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}