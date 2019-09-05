void leaf() {
  __asm__("testw %cx, %bx");
  }

void main() {
  leaf();
}