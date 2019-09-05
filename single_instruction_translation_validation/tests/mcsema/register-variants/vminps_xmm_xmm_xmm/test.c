void leaf() {
  __asm__("vminps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}