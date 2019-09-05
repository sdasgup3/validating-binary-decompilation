void leaf() {
  __asm__("vhsubpd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}