void leaf() {
  __asm__("vpcmpgtb %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}