void leaf() {
  __asm__("vpsubw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}