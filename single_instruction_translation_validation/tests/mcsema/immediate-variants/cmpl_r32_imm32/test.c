void leaf() {
  __asm__("cmpl $0x77, %ebx");
  }

void main() {
  leaf();
}