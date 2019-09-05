void leaf() {
  __asm__("vmovlpd %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}