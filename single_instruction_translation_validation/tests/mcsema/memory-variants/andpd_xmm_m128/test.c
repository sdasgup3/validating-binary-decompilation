void leaf() {
  __asm__("andpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}