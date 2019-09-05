void leaf() {
  __asm__("vpshufb %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}