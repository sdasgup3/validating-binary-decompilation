void leaf() {
  __asm__("vpcmpeqb %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}