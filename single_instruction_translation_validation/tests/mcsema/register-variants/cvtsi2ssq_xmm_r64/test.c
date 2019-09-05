void leaf() {
  __asm__("cvtsi2ssq %rbx, %xmm1");
  }

void main() {
  leaf();
}