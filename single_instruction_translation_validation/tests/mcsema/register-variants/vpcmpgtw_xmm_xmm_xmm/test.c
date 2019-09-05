void leaf() {
  __asm__("vpcmpgtw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}