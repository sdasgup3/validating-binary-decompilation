void leaf() {
  __asm__("vpor %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}