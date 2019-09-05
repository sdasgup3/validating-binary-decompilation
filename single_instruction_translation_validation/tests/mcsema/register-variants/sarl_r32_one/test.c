void leaf() {
  __asm__("sarl $0x1, %ebx");
  }

void main() {
  leaf();
}