void leaf() {
  __asm__("cmovnsw %cx, %bx");
  }

void main() {
  leaf();
}