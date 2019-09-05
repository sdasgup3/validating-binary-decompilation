void leaf() {
  __asm__("vmulpd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}