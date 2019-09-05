void leaf() {
  __asm__("vtestps %xmm2, %xmm1");
  }

void main() {
  leaf();
}