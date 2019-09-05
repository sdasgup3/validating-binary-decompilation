void leaf() {
  __asm__("btl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}