void leaf() {
  __asm__("vpcmpgtd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}