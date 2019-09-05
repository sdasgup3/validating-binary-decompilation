void leaf() {
  __asm__("unpcklpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}