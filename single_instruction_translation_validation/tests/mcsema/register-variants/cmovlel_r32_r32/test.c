void leaf() {
  __asm__("cmovlel %ecx, %ebx");
  }

void main() {
  leaf();
}