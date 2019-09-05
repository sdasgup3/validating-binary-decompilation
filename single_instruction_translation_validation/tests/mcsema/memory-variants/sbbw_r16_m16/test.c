void leaf() {
  __asm__("sbbw -4(%rbp), %bx");
  }

void main() {
  leaf();
}