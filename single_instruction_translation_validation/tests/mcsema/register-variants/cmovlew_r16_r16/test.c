void leaf() {
  __asm__("cmovlew %cx, %bx");
  }

void main() {
  leaf();
}