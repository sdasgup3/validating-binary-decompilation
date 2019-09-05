void leaf() {
  __asm__("psubw %xmm2, %xmm1");
  }

void main() {
  leaf();
}