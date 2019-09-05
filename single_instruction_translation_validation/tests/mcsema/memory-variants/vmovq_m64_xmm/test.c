void leaf() {
  __asm__("vmovq %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}