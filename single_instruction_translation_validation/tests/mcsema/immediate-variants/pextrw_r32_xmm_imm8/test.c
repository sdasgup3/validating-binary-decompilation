void leaf() {
  __asm__("pextrw $0x77, %xmm1, %ebx");
  }

void main() {
  leaf();
}