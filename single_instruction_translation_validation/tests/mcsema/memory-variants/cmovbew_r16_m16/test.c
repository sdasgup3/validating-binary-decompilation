void leaf() {
  __asm__("cmovbew -4(%rbp), %bx");
  }

void main() {
  leaf();
}