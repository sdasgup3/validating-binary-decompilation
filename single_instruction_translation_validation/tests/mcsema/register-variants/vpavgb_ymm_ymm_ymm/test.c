void leaf() {
  __asm__("vpavgb %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}