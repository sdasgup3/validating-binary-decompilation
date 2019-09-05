void leaf() {
  __asm__("mulsd %xmm2, %xmm1");
  }

void main() {
  leaf();
}