void leaf() {
  __asm__("vandps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}