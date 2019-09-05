void leaf() {
  __asm__("sarl $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}