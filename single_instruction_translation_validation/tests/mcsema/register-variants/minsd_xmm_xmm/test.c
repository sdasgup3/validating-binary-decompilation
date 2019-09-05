void leaf() {
  __asm__("minsd %xmm2, %xmm1");
  }

void main() {
  leaf();
}