void leaf() {
  __asm__("vfnmsub132ps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}