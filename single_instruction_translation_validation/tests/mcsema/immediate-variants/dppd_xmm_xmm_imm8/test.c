void leaf() {
  __asm__("dppd $0x77, %xmm2, %xmm1");
  }

void main() {
  leaf();
}