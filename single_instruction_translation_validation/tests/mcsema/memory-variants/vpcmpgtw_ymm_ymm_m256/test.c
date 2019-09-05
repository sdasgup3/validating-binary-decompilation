void leaf() {
  __asm__("vpcmpgtw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}