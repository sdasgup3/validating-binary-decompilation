void leaf() {
  __asm__("cvtps2pd %xmm2, %xmm1");
  }

void main() {
  leaf();
}