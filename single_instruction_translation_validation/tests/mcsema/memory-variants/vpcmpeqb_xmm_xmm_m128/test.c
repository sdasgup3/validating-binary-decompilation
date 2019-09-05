void leaf() {
  __asm__("vpcmpeqb -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}