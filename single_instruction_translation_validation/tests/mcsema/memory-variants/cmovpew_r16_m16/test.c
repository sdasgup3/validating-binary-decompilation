void leaf() {
  __asm__("cmovpew -4(%rbp), %bx");
  }

void main() {
  leaf();
}