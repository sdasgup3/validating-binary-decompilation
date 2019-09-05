void leaf() {
  __asm__("cmpw -4(%rbp), %bx");
  }

void main() {
  leaf();
}