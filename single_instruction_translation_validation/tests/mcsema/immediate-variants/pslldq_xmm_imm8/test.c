void leaf() {
  __asm__("pslldq $0x77, %xmm1");
  }

void main() {
  leaf();
}