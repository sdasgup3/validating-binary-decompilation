void leaf() {
  __asm__("vpcmpeqq %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}