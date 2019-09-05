void leaf() {
  __asm__("vhsubpd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}