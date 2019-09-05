void leaf() {
  __asm__("cvtsi2ssl %ebx, %xmm1");
  }

void main() {
  leaf();
}