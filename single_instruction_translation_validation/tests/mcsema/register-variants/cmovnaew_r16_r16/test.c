void leaf() {
  __asm__("cmovnaew %cx, %bx");
  }

void main() {
  leaf();
}