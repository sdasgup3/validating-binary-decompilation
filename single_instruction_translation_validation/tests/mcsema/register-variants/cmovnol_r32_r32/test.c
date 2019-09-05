void leaf() {
  __asm__("cmovnol %ecx, %ebx");
  }

void main() {
  leaf();
}