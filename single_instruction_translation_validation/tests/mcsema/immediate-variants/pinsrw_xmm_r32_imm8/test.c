void leaf() {
  __asm__("pinsrw $0x77, %ebx, %xmm1");
  }

void main() {
  leaf();
}