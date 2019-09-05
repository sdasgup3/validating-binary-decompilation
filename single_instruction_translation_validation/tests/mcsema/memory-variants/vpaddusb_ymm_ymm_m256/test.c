void leaf() {
  __asm__("vpaddusb -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}