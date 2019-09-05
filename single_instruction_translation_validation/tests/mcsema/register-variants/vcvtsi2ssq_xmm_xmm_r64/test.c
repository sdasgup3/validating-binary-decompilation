void leaf() {
  __asm__("vcvtsi2ssq %rbx, %xmm2, %xmm1");
  }

void main() {
  leaf();
}