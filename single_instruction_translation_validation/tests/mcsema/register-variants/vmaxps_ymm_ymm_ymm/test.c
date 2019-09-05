void leaf() {
  __asm__("vmaxps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}