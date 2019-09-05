void leaf() {
  __asm__("vaddsubps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}