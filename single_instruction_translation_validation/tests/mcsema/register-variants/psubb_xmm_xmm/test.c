void leaf() {
  __asm__("psubb %xmm2, %xmm1");
  }

void main() {
  leaf();
}