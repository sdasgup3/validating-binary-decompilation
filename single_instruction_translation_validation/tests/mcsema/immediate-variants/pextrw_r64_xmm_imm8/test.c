void leaf() {
  __asm__("pextrw $0x77, %xmm1, %rbx");
  }

void main() {
  leaf();
}