void leaf() {
  __asm__("movsbw -4(%rbp), %bx");
  }

void main() {
  leaf();
}