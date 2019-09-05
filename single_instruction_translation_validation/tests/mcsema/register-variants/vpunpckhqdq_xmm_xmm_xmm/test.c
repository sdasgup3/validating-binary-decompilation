void leaf() {
  __asm__("vpunpckhqdq %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}