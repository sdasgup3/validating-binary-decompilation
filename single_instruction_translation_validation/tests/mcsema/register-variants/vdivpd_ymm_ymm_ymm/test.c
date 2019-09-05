void leaf() {
  __asm__("vdivpd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}