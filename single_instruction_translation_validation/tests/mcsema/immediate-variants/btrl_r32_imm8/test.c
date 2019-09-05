void leaf() {
  __asm__("btrl $0x77, %ebx");
  }

void main() {
  leaf();
}