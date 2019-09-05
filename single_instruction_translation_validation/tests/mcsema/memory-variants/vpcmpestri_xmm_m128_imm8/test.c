void leaf() {
  __asm__("vpcmpestri $0x0, -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}