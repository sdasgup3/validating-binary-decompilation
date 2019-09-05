void leaf() {
  __asm__("andl $0x77, %ebx");
  }

void main() {
  leaf();
}