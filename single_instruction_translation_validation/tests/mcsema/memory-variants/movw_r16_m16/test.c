void leaf() {
  __asm__("movw -4(%rbp), %bx");
  }

void main() {
  leaf();
}