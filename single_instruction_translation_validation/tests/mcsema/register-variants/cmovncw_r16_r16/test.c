void leaf() {
  __asm__("cmovncw %cx, %bx");
  }

void main() {
  leaf();
}