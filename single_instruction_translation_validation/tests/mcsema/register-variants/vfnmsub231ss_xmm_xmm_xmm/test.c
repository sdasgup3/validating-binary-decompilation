void leaf() {
  __asm__("vfnmsub231ss %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}