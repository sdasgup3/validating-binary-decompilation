void leaf() {
  __asm__("vpermilps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}