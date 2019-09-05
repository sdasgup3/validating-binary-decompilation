void leaf() {
  __asm__("btsl $0x77, %ebx");
  }

void main() {
  leaf();
}