void leaf() {
  __asm__("vpcmpeqw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}