void leaf() {
  __asm__("vpextrq $0x77, %xmm1, %rbx");
  }

void main() {
  leaf();
}