void leaf() {
  __asm__("vmovmskps %ymm1, %ebx");
  }

void main() {
  leaf();
}