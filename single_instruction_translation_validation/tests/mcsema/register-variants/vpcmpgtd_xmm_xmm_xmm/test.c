void leaf() {
  __asm__("vpcmpgtd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}