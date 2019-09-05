void leaf() {
  __asm__("haddps %xmm2, %xmm1");
  }

void main() {
  leaf();
}