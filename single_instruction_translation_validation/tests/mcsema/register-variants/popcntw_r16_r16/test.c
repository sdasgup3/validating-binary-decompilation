void leaf() {
  __asm__("popcntw %cx, %bx");
  }

void main() {
  leaf();
}