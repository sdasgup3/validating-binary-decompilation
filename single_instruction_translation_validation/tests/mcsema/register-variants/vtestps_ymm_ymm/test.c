void leaf() {
  __asm__("vtestps %ymm2, %ymm1");
  }

void main() {
  leaf();
}