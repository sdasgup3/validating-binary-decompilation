void leaf() {
  __asm__("vpunpcklwd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}