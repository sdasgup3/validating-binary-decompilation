void leaf() {
  __asm__("vandpd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}