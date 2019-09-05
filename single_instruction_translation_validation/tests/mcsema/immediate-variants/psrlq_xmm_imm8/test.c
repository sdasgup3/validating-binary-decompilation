void leaf() {
  __asm__("psrlq $0x77, %xmm1");
  }

void main() {
  leaf();
}