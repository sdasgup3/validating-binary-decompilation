void leaf() {
  __asm__("movbew -4(%rbp), %bx");
  }

void main() {
  leaf();
}