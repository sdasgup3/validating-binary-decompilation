void leaf() {
  __asm__("cmovnel %ecx, %ebx");
  }

void main() {
  leaf();
}