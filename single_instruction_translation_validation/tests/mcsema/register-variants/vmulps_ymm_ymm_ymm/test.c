void leaf() {
  __asm__("vmulps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}