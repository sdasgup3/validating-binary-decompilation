void leaf() {
  __asm__("vorpd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}