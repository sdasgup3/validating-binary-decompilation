void leaf() {
  __asm__("vpcmpgtw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}