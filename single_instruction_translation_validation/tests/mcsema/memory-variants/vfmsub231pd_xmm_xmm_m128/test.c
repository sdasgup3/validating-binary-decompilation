void leaf() {
  __asm__("vfmsub231pd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}