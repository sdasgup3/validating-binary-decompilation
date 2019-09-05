void leaf() {
  __asm__("vpand %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}