void leaf() {
  __asm__("vminsd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}