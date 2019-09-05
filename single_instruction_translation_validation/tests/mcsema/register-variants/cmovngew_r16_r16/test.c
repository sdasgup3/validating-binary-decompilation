void leaf() {
  __asm__("cmovngew %cx, %bx");
  }

void main() {
  leaf();
}