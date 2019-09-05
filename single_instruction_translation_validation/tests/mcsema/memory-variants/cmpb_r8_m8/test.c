void leaf() {
  __asm__("cmpb -4(%rbp), %bl");
  }

void main() {
  leaf();
}