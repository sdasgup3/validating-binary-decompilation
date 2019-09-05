void leaf() {
  __asm__("rorl $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}