void leaf() {
  __asm__("cmovow %cx, %bx");
  }

void main() {
  leaf();
}