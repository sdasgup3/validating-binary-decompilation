void leaf() {
  __asm__("cmpl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}