void leaf() {
  __asm__("mpsadbw $0x77, %xmm2, %xmm1");
  }

void main() {
  leaf();
}