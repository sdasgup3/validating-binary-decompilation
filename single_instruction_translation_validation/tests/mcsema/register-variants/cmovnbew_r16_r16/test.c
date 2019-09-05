void leaf() {
  __asm__("cmovnbew %cx, %bx");
  }

void main() {
  leaf();
}