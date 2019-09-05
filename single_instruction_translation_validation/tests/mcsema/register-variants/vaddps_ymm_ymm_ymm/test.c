void leaf() {
  __asm__("vaddps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}