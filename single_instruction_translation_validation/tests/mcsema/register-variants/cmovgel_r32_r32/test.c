void leaf() {
  __asm__("cmovgel %ecx, %ebx");
  }

void main() {
  leaf();
}