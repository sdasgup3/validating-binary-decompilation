void leaf() {
  __asm__("vfmsub213ss %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}