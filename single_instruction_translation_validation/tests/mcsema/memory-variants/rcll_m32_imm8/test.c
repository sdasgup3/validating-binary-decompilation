void leaf() {
  __asm__("rcll $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}