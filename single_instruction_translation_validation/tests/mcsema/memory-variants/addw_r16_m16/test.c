void leaf() {
  __asm__("addw -4(%rbp), %bx");
  }

void main() {
  leaf();
}