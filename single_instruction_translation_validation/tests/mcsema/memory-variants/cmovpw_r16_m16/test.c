void leaf() {
  __asm__("cmovpw -4(%rbp), %bx");
  }

void main() {
  leaf();
}