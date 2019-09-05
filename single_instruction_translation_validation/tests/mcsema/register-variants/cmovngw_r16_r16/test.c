void leaf() {
  __asm__("cmovngw %cx, %bx");
  }

void main() {
  leaf();
}