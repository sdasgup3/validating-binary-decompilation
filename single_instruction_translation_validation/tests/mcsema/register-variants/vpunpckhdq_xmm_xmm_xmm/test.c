void leaf() {
  __asm__("vpunpckhdq %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}