void leaf() {
  __asm__("mulpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}