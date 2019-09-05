void leaf() {
  __asm__("vfmsub231ss %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}