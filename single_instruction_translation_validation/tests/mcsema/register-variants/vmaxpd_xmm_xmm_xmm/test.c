void leaf() {
  __asm__("vmaxpd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}