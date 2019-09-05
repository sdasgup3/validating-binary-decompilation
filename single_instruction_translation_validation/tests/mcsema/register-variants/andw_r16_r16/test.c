void leaf() {
  __asm__("andw %cx, %bx");
  }

void main() {
  leaf();
}