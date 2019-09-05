void leaf() {
  __asm__("vpminuw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}