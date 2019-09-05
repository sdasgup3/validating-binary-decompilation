void leaf() {
  __asm__("pminud %xmm2, %xmm1");
  }

void main() {
  leaf();
}