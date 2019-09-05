void leaf() {
  __asm__("vdivps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}