void leaf() {
  __asm__("vpcmpestrm $0x77, %xmm2, %xmm1");
  }

void main() {
  leaf();
}