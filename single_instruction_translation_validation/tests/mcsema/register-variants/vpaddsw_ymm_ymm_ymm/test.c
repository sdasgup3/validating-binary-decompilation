void leaf() {
  __asm__("vpaddsw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}