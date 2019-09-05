void leaf() {
  __asm__("vpcmpeqd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}