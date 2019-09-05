void leaf() {
  __asm__("cmovpl %ecx, %ebx");
  }

void main() {
  leaf();
}