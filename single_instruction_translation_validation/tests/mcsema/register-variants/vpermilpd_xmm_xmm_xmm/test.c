void leaf() {
  __asm__("vpermilpd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}