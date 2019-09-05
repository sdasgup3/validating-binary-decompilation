void leaf() {
  __asm__("vpcmpeqd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}