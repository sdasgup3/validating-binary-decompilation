void leaf() {
  __asm__("paddsb %xmm2, %xmm1");
  }

void main() {
  leaf();
}