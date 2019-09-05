void leaf() {
  __asm__("vmovmskps %xmm1, %rbx");
  }

void main() {
  leaf();
}