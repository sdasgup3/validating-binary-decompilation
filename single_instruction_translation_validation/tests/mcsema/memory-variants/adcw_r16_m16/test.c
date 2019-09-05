void leaf() {
  __asm__("adcw -4(%rbp), %bx");
  }

void main() {
  leaf();
}