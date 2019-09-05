void leaf() {
  __asm__("vpextrw $0x77, %xmm1, %ebx");
  }

void main() {
  leaf();
}