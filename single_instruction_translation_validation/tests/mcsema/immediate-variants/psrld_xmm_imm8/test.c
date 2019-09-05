void leaf() {
  __asm__("psrld $0x77, %xmm1");
  }

void main() {
  leaf();
}