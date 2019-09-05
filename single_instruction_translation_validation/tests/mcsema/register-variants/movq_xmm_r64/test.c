void leaf() {
  __asm__("movq %rbx, %xmm1");
  }

void main() {
  leaf();
}