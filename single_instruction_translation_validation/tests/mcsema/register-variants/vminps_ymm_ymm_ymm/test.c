void leaf() {
  __asm__("vminps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}