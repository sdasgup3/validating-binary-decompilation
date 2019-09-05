void leaf() {
  __asm__("cmovbl %ecx, %ebx");
  }

void main() {
  leaf();
}