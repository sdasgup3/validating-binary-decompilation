void leaf() {
  __asm__("cmovew %cx, %bx");
  }

void main() {
  leaf();
}