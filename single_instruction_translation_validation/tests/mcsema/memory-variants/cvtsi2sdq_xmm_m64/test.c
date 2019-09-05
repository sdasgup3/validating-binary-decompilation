void leaf() {
  __asm__("cvtsi2sdq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}