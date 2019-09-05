void leaf() {
  __asm__("vextractps $0x77, %xmm1, %ebx");
  }

void main() {
  leaf();
}