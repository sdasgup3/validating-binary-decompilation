void leaf() {
  __asm__("vfmsub213ps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}