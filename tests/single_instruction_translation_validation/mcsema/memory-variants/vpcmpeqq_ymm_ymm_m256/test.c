void main() {
  __asm__("vpcmpeqq -32(%rbp), %ymm2, %ymm1");
}