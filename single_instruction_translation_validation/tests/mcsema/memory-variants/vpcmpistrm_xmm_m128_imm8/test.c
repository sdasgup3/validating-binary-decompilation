void leaf() {
  __asm__("vpcmpistrm $0x0, -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}