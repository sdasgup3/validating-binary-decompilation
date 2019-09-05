void leaf() {
  __asm__("vfmsub231ss -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}