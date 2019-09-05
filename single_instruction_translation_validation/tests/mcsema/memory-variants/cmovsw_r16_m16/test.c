void leaf() {
  __asm__("cmovsw -4(%rbp), %bx");
  }

void main() {
  leaf();
}