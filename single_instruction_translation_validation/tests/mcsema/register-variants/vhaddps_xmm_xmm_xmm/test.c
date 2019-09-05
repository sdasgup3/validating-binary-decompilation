void leaf() {
  __asm__("vhaddps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}