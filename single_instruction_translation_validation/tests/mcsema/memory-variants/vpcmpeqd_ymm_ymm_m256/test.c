void leaf() {
  __asm__("vpcmpeqd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}