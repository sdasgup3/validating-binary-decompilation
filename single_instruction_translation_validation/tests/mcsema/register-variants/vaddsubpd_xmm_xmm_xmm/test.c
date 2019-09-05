void leaf() {
  __asm__("vaddsubpd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}