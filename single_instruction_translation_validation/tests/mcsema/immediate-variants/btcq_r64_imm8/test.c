void leaf() {
  __asm__("btcq $0x77, %rbx");
  }

void main() {
  leaf();
}