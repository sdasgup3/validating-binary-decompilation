void leaf() {
  __asm__("cmovngl %ecx, %ebx");
  }

void main() {
  leaf();
}