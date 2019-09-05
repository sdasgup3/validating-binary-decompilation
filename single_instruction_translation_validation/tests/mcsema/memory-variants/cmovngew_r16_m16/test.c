void leaf() {
  __asm__("cmovngew -4(%rbp), %bx");
  }

void main() {
  leaf();
}