void leaf() {
  __asm__("cmovnlew %cx, %bx");
  }

void main() {
  leaf();
}