void leaf() {
  __asm__("paddsw %xmm2, %xmm1");
  }

void main() {
  leaf();
}