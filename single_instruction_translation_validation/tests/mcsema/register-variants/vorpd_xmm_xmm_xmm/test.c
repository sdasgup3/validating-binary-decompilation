void leaf() {
  __asm__("vorpd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}