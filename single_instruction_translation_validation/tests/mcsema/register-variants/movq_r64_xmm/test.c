void leaf() {
  __asm__("movq %xmm1, %rbx");
  }

void main() {
  leaf();
}