void leaf() {
  __asm__("cvtdq2pd %xmm2, %xmm1");
  }

void main() {
  leaf();
}