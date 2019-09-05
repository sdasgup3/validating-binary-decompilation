void leaf() {
  __asm__("movb -4(%rbp), %bl");
  }

void main() {
  leaf();
}