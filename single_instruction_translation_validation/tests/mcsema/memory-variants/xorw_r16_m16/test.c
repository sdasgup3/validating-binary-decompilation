void leaf() {
  __asm__("xorw -4(%rbp), %bx");
  }

void main() {
  leaf();
}