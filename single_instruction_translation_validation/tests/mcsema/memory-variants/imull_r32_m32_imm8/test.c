void leaf() {
  __asm__("imull $0x0, -4(%rbp), %ebx");
  }

void main() {
  leaf();
}