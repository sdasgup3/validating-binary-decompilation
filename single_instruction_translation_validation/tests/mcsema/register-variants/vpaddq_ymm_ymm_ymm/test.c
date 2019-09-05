void leaf() {
  __asm__("vpaddq %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}