void leaf() {
  __asm__("vpcmpgtq %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}