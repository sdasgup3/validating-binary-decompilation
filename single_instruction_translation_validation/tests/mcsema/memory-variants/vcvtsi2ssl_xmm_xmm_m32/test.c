void leaf() {
  __asm__("vcvtsi2ssl -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}