void leaf() {
  __asm__("incb -4(%rbp)");
  }

void main() {
  leaf();
}