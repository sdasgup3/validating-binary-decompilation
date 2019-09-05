void leaf() {
  __asm__("pand %xmm2, %xmm1");
  }

void main() {
  leaf();
}