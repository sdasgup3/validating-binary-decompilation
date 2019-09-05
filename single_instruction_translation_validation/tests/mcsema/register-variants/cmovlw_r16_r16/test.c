void leaf() {
  __asm__("cmovlw %cx, %bx");
  }

void main() {
  leaf();
}