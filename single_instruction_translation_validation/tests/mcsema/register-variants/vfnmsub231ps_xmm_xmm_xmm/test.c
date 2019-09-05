void leaf() {
  __asm__("vfnmsub231ps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}