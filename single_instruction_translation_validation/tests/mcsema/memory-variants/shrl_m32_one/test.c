void leaf() {
  __asm__("shrl $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}