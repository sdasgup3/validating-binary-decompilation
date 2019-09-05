void leaf() {
  __asm__("cmovgw %cx, %bx");
  }

void main() {
  leaf();
}