void leaf() {
  __asm__("divpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}