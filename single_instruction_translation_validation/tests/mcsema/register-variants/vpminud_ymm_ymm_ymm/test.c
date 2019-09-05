void leaf() {
  __asm__("vpminud %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}