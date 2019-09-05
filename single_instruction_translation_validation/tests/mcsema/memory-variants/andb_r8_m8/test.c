void leaf() {
  __asm__("andb -4(%rbp), %bl");
  }

void main() {
  leaf();
}