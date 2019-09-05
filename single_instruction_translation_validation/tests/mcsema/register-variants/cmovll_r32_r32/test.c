void leaf() {
  __asm__("cmovll %ecx, %ebx");
  }

void main() {
  leaf();
}