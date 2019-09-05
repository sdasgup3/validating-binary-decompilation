void leaf() {
  __asm__("vdivsd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}