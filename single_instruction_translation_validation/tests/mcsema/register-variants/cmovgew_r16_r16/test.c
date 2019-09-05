void leaf() {
  __asm__("cmovgew %cx, %bx");
  }

void main() {
  leaf();
}