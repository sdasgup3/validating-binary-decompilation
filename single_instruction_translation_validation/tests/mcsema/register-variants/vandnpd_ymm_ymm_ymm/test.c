void leaf() {
  __asm__("vandnpd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}