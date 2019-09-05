void leaf() {
  __asm__("vpsadbw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}