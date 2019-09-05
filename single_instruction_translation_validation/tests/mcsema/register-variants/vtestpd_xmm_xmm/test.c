void leaf() {
  __asm__("vtestpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}