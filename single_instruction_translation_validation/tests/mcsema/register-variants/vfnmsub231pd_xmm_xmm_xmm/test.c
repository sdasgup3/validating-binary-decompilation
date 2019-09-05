void leaf() {
  __asm__("vfnmsub231pd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}