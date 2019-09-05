void leaf() {
  __asm__("vpxor %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}