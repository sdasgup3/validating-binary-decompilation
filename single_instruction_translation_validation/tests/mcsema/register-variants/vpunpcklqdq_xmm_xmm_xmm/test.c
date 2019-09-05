void leaf() {
  __asm__("vpunpcklqdq %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}