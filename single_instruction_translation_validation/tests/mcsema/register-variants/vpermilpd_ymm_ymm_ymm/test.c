void leaf() {
  __asm__("vpermilpd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}