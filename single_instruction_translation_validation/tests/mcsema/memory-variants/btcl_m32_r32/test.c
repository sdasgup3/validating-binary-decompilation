void leaf() {
  __asm__("btcl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}