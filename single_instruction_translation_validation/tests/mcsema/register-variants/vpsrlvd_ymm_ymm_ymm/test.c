void leaf() {
  __asm__("vpsrlvd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}