void leaf() {
  __asm__("psrad $0x77, %xmm1");
  }

void main() {
  leaf();
}