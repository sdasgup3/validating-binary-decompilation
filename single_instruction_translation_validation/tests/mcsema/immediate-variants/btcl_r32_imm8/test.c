void leaf() {
  __asm__("btcl $0x77, %ebx");
  }

void main() {
  leaf();
}