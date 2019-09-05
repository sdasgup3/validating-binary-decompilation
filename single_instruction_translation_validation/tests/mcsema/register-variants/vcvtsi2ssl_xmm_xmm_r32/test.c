void leaf() {
  __asm__("vcvtsi2ssl %ebx, %xmm2, %xmm1");
  }

void main() {
  leaf();
}