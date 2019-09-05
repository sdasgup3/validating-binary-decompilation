void leaf() {
  __asm__("movmskps %xmm1, %ebx");
  }

void main() {
  leaf();
}