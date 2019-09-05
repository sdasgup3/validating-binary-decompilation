void leaf() {
  __asm__("xorb -4(%rbp), %bl");
  }

void main() {
  leaf();
}