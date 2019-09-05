void leaf() {
  __asm__("vtestpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}