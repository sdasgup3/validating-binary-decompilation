void leaf() {
  __asm__("cmovnlw %cx, %bx");
  }

void main() {
  leaf();
}