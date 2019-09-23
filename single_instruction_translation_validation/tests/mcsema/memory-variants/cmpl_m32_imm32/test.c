void leaf() {
  __asm__("cmpl $0x77, -4(%rbp)");
  }

void main() {
  leaf();
}
