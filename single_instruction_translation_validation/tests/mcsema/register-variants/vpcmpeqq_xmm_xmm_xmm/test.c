void leaf() {
  __asm__("vpcmpeqq %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}