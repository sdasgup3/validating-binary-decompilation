void leaf() {
  __asm__("vunpckhps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}