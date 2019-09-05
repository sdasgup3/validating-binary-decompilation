void leaf() {
  __asm__("vmovd %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}