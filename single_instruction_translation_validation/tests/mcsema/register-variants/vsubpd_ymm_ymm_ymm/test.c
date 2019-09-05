void leaf() {
  __asm__("vsubpd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}