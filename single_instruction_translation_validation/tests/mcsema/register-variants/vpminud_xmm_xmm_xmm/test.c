void leaf() {
  __asm__("vpminud %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}