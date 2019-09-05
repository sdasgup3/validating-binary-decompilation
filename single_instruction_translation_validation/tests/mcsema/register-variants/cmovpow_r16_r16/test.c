void leaf() {
  __asm__("cmovpow %cx, %bx");
  }

void main() {
  leaf();
}