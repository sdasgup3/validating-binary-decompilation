void leaf() {
  __asm__("vpcmpeqw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}