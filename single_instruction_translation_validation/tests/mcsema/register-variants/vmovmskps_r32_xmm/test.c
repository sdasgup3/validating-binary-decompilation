void leaf() {
  __asm__("vmovmskps %xmm1, %ebx");
  }

void main() {
  leaf();
}