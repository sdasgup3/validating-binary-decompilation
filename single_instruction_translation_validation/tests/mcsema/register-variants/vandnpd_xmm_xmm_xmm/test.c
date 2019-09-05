void leaf() {
  __asm__("vandnpd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}