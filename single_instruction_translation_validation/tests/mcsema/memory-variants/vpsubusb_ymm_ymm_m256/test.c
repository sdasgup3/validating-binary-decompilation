void leaf() {
  __asm__("vpsubusb -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}