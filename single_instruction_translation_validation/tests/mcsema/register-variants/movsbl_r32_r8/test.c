void leaf() {
  __asm__("movsbl %cl, %ebx");
  }

void main() {
  leaf();
}