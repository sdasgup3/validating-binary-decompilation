void leaf() {
  __asm__("shrl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}