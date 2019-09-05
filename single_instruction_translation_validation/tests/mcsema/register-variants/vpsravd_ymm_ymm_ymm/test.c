void leaf() {
  __asm__("vpsravd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}