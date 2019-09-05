void leaf() {
  __asm__("vpunpcklbw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}