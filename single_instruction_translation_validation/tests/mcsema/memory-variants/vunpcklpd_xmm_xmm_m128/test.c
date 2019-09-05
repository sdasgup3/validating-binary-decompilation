void leaf() {
  __asm__("vunpcklpd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}