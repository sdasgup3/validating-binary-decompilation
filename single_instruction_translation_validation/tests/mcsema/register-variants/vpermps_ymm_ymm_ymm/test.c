void leaf() {
  __asm__("vpermps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}