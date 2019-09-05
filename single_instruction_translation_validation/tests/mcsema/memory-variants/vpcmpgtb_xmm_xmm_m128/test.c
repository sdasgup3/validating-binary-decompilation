void leaf() {
  __asm__("vpcmpgtb -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}