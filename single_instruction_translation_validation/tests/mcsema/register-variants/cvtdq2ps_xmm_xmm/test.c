void leaf() {
  __asm__("cvtdq2ps %xmm2, %xmm1");
  }

void main() {
  leaf();
}