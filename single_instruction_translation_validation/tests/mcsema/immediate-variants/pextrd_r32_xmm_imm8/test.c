void leaf() {
  __asm__("pextrd $0x77, %xmm1, %ebx");
  }

void main() {
  leaf();
}