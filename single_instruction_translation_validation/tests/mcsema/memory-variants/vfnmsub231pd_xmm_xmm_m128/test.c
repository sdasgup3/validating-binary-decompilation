void leaf() {
  __asm__("vfnmsub231pd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}