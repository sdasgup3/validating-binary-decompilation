void leaf() {
  __asm__("vpaddw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}