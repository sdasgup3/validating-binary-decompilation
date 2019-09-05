void leaf() {
  __asm__("vminpd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}