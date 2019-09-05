void leaf() {
  __asm__("rcpps %xmm2, %xmm1");
  }

void main() {
  leaf();
}