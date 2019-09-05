void leaf() {
  __asm__("cmovnbl %ecx, %ebx");
  }

void main() {
  leaf();
}