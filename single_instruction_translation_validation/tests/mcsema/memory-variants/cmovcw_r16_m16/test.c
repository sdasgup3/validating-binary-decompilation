void leaf() {
  __asm__("cmovcw -4(%rbp), %bx");
  }

void main() {
  leaf();
}