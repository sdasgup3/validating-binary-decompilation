void leaf() {
  __asm__("cmoval %ecx, %ebx");
  }

void main() {
  leaf();
}