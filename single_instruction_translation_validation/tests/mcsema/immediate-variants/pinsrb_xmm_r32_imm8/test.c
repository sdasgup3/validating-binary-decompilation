void leaf() {
  __asm__("pinsrb $0x77, %ebx, %xmm1");
  }

void main() {
  leaf();
}