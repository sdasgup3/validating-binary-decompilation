void leaf() {
  __asm__("incl -4(%rbp)");
  }

void main() {
  leaf();
}