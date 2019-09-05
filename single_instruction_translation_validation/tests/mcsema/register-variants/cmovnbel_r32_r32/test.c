void leaf() {
  __asm__("cmovnbel %ecx, %ebx");
  }

void main() {
  leaf();
}