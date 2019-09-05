void leaf() {
  __asm__("idivb -4(%rbp)");
  }

void main() {
  leaf();
}