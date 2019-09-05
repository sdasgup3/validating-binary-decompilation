void leaf() {
  __asm__("vfmsub231ps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}