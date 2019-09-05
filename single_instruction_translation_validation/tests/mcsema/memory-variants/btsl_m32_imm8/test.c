void leaf() {
  __asm__("btsl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}