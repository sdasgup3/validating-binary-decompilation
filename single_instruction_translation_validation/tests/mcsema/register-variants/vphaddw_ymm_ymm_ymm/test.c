void leaf() {
  __asm__("vphaddw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}