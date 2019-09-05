void leaf() {
  __asm__("vorpd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}