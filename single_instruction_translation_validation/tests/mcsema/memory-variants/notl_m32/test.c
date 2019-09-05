void leaf() {
  __asm__("notl -4(%rbp)");
  }

void main() {
  leaf();
}