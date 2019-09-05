void leaf() {
  __asm__("cmovnbw %cx, %bx");
  }

void main() {
  leaf();
}