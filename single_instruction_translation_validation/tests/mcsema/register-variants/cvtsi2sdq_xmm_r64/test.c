void leaf() {
  __asm__("cvtsi2sdq %rbx, %xmm1");
  }

void main() {
  leaf();
}