void leaf() {
  __asm__("vpshufhw $0x77, %xmm2, %xmm1");
  }

void main() {
  leaf();
}