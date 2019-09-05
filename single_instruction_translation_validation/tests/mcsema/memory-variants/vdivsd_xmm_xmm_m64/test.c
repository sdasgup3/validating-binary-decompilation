void leaf() {
  __asm__("vdivsd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}