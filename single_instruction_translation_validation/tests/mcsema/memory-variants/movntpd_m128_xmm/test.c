void leaf() {
  __asm__("movntpd %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}