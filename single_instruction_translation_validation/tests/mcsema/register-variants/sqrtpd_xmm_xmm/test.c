void leaf() {
  __asm__("sqrtpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}