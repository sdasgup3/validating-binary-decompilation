void main() {
  __asm__("vpcmpeqq -16(%rbp), %ymm2, %ymm1");
}