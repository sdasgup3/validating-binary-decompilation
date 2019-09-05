void leaf() {
  __asm__("vmovntps %ymm1, -4(%rbp)");
  }

void main() {
  leaf();
}