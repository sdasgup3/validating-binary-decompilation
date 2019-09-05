void leaf() {
  __asm__("rorl $0x77, %ebx");
  }

void main() {
  leaf();
}