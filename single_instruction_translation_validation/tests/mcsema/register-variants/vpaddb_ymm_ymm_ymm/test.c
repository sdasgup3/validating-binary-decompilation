void leaf() {
  __asm__("vpaddb %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}