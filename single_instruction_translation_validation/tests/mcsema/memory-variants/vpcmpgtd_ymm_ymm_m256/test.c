void leaf() {
  __asm__("vpcmpgtd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}