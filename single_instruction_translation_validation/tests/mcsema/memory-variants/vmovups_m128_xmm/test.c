void leaf() {
  __asm__("vmovups %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}