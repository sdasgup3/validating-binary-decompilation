void leaf() {
  __asm__("vmovntpd %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}