void leaf() {
  __asm__("vfmsub231sd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}