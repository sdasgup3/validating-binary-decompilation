void leaf() {
  __asm__("vpcmpeqb %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}