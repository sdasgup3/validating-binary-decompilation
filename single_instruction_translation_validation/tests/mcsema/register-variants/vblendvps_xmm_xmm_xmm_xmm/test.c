void leaf() {
  __asm__("vblendvps %xmm4, %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}