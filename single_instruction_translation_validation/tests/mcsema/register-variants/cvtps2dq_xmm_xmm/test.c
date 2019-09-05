void leaf() {
  __asm__("cvtps2dq %xmm2, %xmm1");
  }

void main() {
  leaf();
}