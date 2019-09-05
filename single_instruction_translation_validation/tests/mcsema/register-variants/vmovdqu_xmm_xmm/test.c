void leaf() {
  __asm__("vmovdqu %xmm2, %xmm1");
  }

void main() {
  leaf();
}