void leaf() {
  __asm__("vrsqrtps %xmm2, %xmm1");
  }

void main() {
  leaf();
}