void leaf() {
  __asm__("vaddps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}