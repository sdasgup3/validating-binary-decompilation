void leaf() {
  __asm__("vunpckhps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}