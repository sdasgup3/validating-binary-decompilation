void leaf() {
  __asm__("btcw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}