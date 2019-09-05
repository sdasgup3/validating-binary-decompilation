void leaf() {
  __asm__("vfmsub132sd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}