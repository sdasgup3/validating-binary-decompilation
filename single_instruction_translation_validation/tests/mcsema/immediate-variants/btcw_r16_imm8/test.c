void leaf() {
  __asm__("btcw $0x77, %bx");
  }

void main() {
  leaf();
}