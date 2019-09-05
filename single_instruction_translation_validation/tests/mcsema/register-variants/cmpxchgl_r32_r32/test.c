void leaf() {
  __asm__("cmpxchgl %ecx, %ebx");
  }

void main() {
  leaf();
}