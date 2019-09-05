void leaf() {
  __asm__("cmovbew %cx, %bx");
  }

void main() {
  leaf();
}