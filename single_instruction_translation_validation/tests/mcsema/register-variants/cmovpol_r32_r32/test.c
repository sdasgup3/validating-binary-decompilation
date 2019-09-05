void leaf() {
  __asm__("cmovpol %ecx, %ebx");
  }

void main() {
  leaf();
}