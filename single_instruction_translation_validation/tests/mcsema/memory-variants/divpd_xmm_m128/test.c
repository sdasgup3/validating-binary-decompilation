void leaf() {
  __asm__("divpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}