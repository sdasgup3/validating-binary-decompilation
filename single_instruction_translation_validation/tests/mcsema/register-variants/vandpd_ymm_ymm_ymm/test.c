void leaf() {
  __asm__("vandpd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}