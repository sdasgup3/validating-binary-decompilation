void leaf() {
  __asm__("vpunpckhbw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}