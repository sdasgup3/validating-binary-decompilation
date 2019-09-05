void leaf() {
  __asm__("cmovngel %ecx, %ebx");
  }

void main() {
  leaf();
}