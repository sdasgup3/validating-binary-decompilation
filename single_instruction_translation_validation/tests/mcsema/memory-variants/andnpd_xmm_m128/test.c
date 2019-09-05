void leaf() {
  __asm__("andnpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}