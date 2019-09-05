void leaf() {
  __asm__("vrsqrtps %ymm2, %ymm1");
  }

void main() {
  leaf();
}