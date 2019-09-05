void leaf() {
  __asm__("vsqrtps %ymm2, %ymm1");
  }

void main() {
  leaf();
}