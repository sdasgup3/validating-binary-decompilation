void leaf() {
  __asm__("movzbw -4(%rbp), %bx");
  }

void main() {
  leaf();
}