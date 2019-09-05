void leaf() {
  __asm__("lzcntw %cx, %bx");
  }

void main() {
  leaf();
}