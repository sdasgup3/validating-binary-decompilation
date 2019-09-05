void leaf() {
  __asm__("xorq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}