void leaf() {
  __asm__("vpcmpgtq -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}