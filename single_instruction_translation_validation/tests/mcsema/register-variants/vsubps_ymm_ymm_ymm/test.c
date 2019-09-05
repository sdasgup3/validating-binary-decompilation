void leaf() {
  __asm__("vsubps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}