void leaf() {
  __asm__("vmaskmovpd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}