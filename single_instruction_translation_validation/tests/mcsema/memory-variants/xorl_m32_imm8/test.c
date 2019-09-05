void leaf() {
  __asm__("xorl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}