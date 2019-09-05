void leaf() {
  __asm__("vunpckhpd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}