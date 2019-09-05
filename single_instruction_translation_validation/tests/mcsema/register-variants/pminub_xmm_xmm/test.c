void leaf() {
  __asm__("pminub %xmm2, %xmm1");
  }

void main() {
  leaf();
}