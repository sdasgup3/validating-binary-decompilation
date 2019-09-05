void leaf() {
  __asm__("psllw $0x77, %xmm1");
  }

void main() {
  leaf();
}