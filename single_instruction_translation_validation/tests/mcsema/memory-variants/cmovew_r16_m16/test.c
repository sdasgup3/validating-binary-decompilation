void leaf() {
  __asm__("cmovew -4(%rbp), %bx");
  }

void main() {
  leaf();
}