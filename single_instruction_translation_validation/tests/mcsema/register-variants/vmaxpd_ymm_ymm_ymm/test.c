void leaf() {
  __asm__("vmaxpd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}