void leaf() {
  __asm__("xorq $0x77, %rbx");
  }

void main() {
  leaf();
}