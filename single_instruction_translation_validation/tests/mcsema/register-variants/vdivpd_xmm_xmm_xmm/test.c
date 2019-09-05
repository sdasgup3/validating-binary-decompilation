void leaf() {
  __asm__("vdivpd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}