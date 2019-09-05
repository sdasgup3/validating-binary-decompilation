void leaf() {
  __asm__("pinsrw $0x0, -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}