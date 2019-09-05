void leaf() {
  __asm__("orl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}