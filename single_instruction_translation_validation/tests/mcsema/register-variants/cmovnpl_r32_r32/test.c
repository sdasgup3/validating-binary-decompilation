void leaf() {
  __asm__("cmovnpl %ecx, %ebx");
  }

void main() {
  leaf();
}