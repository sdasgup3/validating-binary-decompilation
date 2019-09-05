void leaf() {
  __asm__("tzcntw -4(%rbp), %bx");
  }

void main() {
  leaf();
}