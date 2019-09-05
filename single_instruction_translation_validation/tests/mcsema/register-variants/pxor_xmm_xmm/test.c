void leaf() {
  __asm__("pxor %xmm2, %xmm1");
  }

void main() {
  leaf();
}