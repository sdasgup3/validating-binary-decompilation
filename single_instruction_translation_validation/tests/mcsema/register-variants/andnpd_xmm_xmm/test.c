void leaf() {
  __asm__("andnpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}