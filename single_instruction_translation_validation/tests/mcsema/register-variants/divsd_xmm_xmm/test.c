void leaf() {
  __asm__("divsd %xmm2, %xmm1");
  }

void main() {
  leaf();
}