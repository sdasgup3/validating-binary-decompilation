void leaf() {
  __asm__("vpextrw $0x77, %xmm1, %rbx");
  }

void main() {
  leaf();
}