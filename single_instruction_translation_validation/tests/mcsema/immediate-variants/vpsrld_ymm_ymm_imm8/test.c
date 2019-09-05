void leaf() {
  __asm__("vpsrld $0x77, %ymm2, %ymm1");
  }

void main() {
  leaf();
}