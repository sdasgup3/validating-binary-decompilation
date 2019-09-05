void leaf() {
  __asm__("btw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}