void leaf() {
  __asm__("vpunpckldq %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}