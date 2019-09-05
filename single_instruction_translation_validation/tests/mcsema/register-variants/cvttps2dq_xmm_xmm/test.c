void leaf() {
  __asm__("cvttps2dq %xmm2, %xmm1");
  }

void main() {
  leaf();
}