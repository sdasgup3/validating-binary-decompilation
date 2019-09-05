void leaf() {
  __asm__("btcw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}