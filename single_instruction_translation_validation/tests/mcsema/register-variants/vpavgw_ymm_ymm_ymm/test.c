void leaf() {
  __asm__("vpavgw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}