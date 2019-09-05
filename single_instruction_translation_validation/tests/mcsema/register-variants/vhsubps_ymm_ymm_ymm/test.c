void leaf() {
  __asm__("vhsubps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}