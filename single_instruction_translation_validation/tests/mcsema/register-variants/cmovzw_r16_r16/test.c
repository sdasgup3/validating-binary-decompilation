void leaf() {
  __asm__("cmovzw %cx, %bx");
  }

void main() {
  leaf();
}