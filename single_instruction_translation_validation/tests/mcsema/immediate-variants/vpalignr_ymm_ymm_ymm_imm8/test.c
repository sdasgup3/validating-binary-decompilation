void leaf() {
  __asm__("vpalignr $0x77, %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}