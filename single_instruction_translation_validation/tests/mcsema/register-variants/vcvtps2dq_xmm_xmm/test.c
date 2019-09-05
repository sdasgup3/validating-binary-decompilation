void leaf() {
  __asm__("vcvtps2dq %xmm2, %xmm1");
  }

void main() {
  leaf();
}