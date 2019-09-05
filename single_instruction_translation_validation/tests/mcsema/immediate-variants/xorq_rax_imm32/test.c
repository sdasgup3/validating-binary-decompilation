void leaf() {
  __asm__("xorq $0x77, %rax");
  }

void main() {
  leaf();
}