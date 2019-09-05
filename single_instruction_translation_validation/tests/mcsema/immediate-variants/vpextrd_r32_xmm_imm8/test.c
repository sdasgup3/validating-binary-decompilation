void leaf() {
  __asm__("vpextrd $0x77, %xmm1, %ebx");
  }

void main() {
  leaf();
}