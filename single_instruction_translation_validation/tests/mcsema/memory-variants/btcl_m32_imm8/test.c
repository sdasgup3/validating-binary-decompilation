void leaf() {
  __asm__("btcl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}