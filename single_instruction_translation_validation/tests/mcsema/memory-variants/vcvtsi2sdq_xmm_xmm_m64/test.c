void leaf() {
  __asm__("vcvtsi2sdq -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}