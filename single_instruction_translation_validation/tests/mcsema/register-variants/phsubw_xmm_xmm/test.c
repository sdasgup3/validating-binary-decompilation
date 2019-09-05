void leaf() {
  __asm__("phsubw %xmm2, %xmm1");
  }

void main() {
  leaf();
}