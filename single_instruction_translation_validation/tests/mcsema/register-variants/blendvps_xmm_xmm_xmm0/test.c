void leaf() {
  __asm__("blendvps %xmm0, %xmm2, %xmm1");
  }

void main() {
  leaf();
}