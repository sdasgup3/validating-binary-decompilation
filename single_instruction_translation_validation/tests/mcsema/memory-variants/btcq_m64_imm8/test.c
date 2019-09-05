void leaf() {
  __asm__("btcq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}