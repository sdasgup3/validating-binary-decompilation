void leaf() {
  __asm__("subb -4(%rbp), %bl");
  }

void main() {
  leaf();
}