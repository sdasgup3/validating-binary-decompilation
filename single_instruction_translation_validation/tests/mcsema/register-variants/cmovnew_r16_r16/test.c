void leaf() {
  __asm__("cmovnew %cx, %bx");
  }

void main() {
  leaf();
}