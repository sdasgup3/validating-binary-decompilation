void leaf() {
  __asm__("cmovol %ecx, %ebx");
  }

void main() {
  leaf();
}