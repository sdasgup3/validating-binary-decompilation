void leaf() {
  __asm__("vpsubb %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}