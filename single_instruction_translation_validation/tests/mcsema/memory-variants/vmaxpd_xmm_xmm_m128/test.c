void leaf() {
  __asm__("vmaxpd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}