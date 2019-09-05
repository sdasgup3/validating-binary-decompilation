void leaf() {
  __asm__("negb -4(%rbp)");
  }

void main() {
  leaf();
}