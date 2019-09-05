void leaf() {
  __asm__("andw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}