void leaf() {
  __asm__("vdivss %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}