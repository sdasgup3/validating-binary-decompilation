void leaf() {
  __asm__("movmskps %xmm1, %rbx");
  }

void main() {
  leaf();
}