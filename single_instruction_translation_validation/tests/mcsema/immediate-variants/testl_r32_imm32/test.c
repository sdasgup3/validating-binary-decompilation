void leaf() {
  __asm__("testl $0x77, %ebx");
  }

void main() {
  leaf();
}