void leaf() {
  __asm__("decb -4(%rbp)");
  }

void main() {
  leaf();
}