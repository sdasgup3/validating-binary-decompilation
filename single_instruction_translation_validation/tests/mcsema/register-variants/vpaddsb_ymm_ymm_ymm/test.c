void leaf() {
  __asm__("vpaddsb %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}