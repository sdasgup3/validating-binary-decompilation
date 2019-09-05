void leaf() {
  __asm__("vpcmpeqw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}