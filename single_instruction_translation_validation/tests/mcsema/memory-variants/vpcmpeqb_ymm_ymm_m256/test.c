void leaf() {
  __asm__("vpcmpeqb -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}