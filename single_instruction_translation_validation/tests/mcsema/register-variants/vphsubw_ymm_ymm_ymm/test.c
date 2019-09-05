void leaf() {
  __asm__("vphsubw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}