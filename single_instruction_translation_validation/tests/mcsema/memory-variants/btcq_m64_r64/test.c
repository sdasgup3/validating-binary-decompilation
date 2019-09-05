void leaf() {
  __asm__("btcq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}