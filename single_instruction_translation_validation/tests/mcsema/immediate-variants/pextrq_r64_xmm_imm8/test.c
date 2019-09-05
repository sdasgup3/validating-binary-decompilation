void leaf() {
  __asm__("pextrq $0x77, %xmm1, %rbx");
  }

void main() {
  leaf();
}