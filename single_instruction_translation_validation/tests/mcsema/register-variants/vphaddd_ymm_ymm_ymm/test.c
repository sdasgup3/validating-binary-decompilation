void leaf() {
  __asm__("vphaddd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}