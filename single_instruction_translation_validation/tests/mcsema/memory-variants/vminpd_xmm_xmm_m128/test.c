void leaf() {
  __asm__("vminpd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}