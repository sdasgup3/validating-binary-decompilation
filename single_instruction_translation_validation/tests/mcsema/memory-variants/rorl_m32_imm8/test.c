void leaf() {
  __asm__("rorl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}