void leaf() {
  __asm__("cmovnlel %ecx, %ebx");
  }

void main() {
  leaf();
}