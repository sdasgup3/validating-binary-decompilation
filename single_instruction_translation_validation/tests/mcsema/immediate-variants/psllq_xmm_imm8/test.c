void leaf() {
  __asm__("psllq $0x77, %xmm1");
  }

void main() {
  leaf();
}