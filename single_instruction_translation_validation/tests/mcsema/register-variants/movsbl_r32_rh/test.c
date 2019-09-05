void leaf() {
  __asm__("movsbl %ah, %ebx");
  }

void main() {
  leaf();
}