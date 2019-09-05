void leaf() {
  __asm__("imull $0x77, %ecx, %ebx");
  }

void main() {
  leaf();
}