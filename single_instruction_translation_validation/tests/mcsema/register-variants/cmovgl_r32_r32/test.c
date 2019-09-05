void leaf() {
  __asm__("cmovgl %ecx, %ebx");
  }

void main() {
  leaf();
}