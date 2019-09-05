void leaf() {
  __asm__("vcmppd $0x77, %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}