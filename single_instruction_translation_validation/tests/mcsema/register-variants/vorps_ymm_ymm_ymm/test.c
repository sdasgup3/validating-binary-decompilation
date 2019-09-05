void leaf() {
  __asm__("vorps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}