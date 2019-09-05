void leaf() {
  __asm__("psrldq $0x77, %xmm1");
  }

void main() {
  leaf();
}