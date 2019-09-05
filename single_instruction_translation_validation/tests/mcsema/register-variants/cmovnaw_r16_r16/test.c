void leaf() {
  __asm__("cmovnaw %cx, %bx");
  }

void main() {
  leaf();
}