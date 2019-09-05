void leaf() {
  __asm__("cmovnow %cx, %bx");
  }

void main() {
  leaf();
}