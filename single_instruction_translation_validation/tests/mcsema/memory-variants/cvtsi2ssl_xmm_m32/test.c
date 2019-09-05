void leaf() {
  __asm__("cvtsi2ssl -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}