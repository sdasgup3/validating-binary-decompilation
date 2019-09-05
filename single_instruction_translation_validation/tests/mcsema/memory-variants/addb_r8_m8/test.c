void leaf() {
  __asm__("addb -4(%rbp), %bl");
  }

void main() {
  leaf();
}