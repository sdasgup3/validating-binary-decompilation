void leaf() {
  __asm__("xorb $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}