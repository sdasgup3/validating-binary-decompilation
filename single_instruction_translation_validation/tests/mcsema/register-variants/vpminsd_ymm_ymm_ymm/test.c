void leaf() {
  __asm__("vpminsd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}