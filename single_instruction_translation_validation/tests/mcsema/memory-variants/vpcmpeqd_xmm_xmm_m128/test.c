void leaf() {
  __asm__("vpcmpeqd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}