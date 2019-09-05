void leaf() {
  __asm__("cvtsi2ssq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}