void leaf() {
  __asm__("orl $0x77, %ebx");
  }

void main() {
  leaf();
}