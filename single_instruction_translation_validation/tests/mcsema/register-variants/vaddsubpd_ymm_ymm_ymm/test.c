void leaf() {
  __asm__("vaddsubpd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}