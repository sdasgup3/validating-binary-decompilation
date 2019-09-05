void leaf() {
  __asm__("vphaddsw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}