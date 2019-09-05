void leaf() {
  __asm__("rorl $0x1, %ebx");
  }

void main() {
  leaf();
}