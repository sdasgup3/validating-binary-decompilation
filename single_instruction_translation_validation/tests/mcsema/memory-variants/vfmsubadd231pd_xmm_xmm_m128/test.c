void leaf() {
  __asm__("vfmsubadd231pd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}