void leaf() {
  __asm__("xchgw -4(%rbp), %bx");
  }

void main() {
  leaf();
}