void leaf() {
  __asm__("cmovbw %cx, %bx");
  }

void main() {
  leaf();
}