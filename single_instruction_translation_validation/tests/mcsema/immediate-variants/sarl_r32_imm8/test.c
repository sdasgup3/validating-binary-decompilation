void leaf() {
  __asm__("sarl $0x77, %ebx");
  }

void main() {
  leaf();
}