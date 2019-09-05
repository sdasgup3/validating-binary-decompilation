void leaf() {
  __asm__("shrl $0x1, %ebx");
  }

void main() {
  leaf();
}