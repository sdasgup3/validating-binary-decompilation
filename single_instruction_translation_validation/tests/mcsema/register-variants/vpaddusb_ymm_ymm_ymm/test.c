void leaf() {
  __asm__("vpaddusb %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}