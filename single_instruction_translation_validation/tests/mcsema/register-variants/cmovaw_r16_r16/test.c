void leaf() {
  __asm__("cmovaw %cx, %bx");
  }

void main() {
  leaf();
}