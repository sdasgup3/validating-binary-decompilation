void leaf() {
  __asm__("pminsd %xmm2, %xmm1");
  }

void main() {
  leaf();
}