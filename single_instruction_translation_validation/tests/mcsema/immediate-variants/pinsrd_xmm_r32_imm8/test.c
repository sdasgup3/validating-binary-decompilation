void leaf() {
  __asm__("pinsrd $0x77, %ebx, %xmm1");
  }

void main() {
  leaf();
}