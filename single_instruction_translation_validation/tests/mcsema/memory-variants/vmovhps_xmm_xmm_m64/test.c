void leaf() {
  __asm__("vmovhps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}