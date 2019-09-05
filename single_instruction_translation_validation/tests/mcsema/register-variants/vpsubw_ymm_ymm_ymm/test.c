void leaf() {
  __asm__("vpsubw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}