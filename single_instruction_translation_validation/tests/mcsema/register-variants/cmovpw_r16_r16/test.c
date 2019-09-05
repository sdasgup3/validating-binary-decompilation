void leaf() {
  __asm__("cmovpw %cx, %bx");
  }

void main() {
  leaf();
}