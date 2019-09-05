void leaf() {
  __asm__("xchgl %ecx, %ebx");
  }

void main() {
  leaf();
}