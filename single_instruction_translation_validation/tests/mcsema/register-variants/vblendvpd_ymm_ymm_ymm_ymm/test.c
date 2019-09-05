void leaf() {
  __asm__("vblendvpd %ymm4, %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}