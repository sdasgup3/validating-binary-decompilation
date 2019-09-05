void leaf() {
  __asm__("unpckhps %xmm2, %xmm1");
  }

void main() {
  leaf();
}