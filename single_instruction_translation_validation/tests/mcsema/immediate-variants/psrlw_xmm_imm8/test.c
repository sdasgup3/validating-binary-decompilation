void leaf() {
  __asm__("psrlw $0x77, %xmm1");
  }

void main() {
  leaf();
}