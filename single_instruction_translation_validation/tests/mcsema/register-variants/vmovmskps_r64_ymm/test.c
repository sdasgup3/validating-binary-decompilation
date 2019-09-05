void leaf() {
  __asm__("vmovmskps %ymm1, %rbx");
  }

void main() {
  leaf();
}