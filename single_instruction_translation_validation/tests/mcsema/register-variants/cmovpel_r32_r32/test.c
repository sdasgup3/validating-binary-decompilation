void leaf() {
  __asm__("cmovpel %ecx, %ebx");
  }

void main() {
  leaf();
}