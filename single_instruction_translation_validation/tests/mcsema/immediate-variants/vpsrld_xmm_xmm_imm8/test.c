void leaf() {
  __asm__("vpsrld $0x77, %xmm2, %xmm1");
  }

void main() {
  leaf();
}