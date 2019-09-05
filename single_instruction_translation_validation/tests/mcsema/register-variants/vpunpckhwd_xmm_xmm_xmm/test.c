void leaf() {
  __asm__("vpunpckhwd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}