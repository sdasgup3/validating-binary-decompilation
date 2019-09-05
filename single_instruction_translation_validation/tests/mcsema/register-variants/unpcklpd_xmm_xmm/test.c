void leaf() {
  __asm__("unpcklpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}