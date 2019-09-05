void leaf() {
  __asm__("vpcmpeqq -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}