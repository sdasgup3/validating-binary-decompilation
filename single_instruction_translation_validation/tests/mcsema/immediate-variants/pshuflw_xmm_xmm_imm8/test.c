void leaf() {
  __asm__("pshuflw $0x77, %xmm2, %xmm1");
  }

void main() {
  leaf();
}