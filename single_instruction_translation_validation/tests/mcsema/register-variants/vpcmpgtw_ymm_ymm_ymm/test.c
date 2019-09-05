void leaf() {
  __asm__("vpcmpgtw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}