void leaf() {
  __asm__("cmovbel %ecx, %ebx");
  }

void main() {
  leaf();
}