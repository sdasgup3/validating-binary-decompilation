void leaf() {
  __asm__("vandnps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}