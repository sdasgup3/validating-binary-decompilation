void leaf() {
  __asm__("vaddsubpd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}