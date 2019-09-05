void leaf() {
  __asm__("vmaskmovpd %xmm2, %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}