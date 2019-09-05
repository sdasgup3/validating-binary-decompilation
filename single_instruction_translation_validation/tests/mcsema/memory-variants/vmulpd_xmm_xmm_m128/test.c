void leaf() {
  __asm__("vmulpd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}