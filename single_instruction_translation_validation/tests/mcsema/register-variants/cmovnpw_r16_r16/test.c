void leaf() {
  __asm__("cmovnpw %cx, %bx");
  }

void main() {
  leaf();
}