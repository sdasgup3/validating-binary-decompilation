void leaf() {
  __asm__("cmovnal %ecx, %ebx");
  }

void main() {
  leaf();
}