void leaf() {
  __asm__("rcll $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}