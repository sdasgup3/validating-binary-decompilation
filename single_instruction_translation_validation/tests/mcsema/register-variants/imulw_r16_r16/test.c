void leaf() {
  __asm__("imulw %cx, %bx");
  }

void main() {
  leaf();
}