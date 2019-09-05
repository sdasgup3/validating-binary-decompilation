void leaf() {
  __asm__("vfmsub213pd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}