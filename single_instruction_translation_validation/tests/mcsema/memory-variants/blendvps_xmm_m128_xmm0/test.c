void leaf() {
  __asm__("blendvps %xmm0, -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}