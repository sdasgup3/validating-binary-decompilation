void leaf() {
  __asm__("vminpd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}