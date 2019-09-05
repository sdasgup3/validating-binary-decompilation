void leaf() {
  __asm__("cmovnpw -4(%rbp), %bx");
  }

void main() {
  leaf();
}