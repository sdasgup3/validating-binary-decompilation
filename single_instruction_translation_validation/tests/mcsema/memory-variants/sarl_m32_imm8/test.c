void leaf() {
  __asm__("sarl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}