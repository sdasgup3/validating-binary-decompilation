void leaf() {
  __asm__("xorpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}