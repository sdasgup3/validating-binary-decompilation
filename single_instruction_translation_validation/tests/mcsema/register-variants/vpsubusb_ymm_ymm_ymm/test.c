void leaf() {
  __asm__("vpsubusb %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}