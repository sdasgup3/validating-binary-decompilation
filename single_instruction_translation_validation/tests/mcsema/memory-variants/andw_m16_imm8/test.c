void leaf() {
  __asm__("andw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}