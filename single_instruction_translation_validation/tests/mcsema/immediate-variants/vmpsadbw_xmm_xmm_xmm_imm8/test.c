void leaf() {
  __asm__("vmpsadbw $0x77, %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}