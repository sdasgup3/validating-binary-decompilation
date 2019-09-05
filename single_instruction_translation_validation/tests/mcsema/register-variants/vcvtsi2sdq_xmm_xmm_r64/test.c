void leaf() {
  __asm__("vcvtsi2sdq %rbx, %xmm2, %xmm1");
  }

void main() {
  leaf();
}