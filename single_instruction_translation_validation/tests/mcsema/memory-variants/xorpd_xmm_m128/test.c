void leaf() {
  __asm__("xorpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}