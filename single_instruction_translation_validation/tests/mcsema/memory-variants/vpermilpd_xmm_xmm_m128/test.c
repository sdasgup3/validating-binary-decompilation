void leaf() {
  __asm__("vpermilpd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}