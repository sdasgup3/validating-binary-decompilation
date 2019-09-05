void leaf() {
  __asm__("vfmsub132ps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}