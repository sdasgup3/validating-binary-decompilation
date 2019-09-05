void leaf() {
  __asm__("vpermilpd $0x77, %ymm2, %ymm1");
  }

void main() {
  leaf();
}