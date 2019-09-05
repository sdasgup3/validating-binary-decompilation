void leaf() {
  __asm__("cmovpew %cx, %bx");
  }

void main() {
  leaf();
}