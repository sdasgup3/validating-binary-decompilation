void leaf() {
  __asm__("cmovncl %ecx, %ebx");
  }

void main() {
  leaf();
}