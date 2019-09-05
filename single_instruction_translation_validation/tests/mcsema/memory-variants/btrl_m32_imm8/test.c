void leaf() {
  __asm__("btrl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}