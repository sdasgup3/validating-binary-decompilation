void leaf() {
  __asm__("vandnpd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}