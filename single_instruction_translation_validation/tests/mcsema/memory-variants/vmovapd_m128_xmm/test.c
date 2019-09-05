void leaf() {
  __asm__("vmovapd %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}