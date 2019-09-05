void leaf() {
  __asm__("vpcmpistri $0x77, %xmm2, %xmm1");
  }

void main() {
  leaf();
}