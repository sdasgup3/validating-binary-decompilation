void leaf() {
  __asm__("cmovaew -4(%rbp), %bx");
  }

void main() {
  leaf();
}