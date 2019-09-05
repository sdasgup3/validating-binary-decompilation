void leaf() {
  __asm__("cmovpow -4(%rbp), %bx");
  }

void main() {
  leaf();
}