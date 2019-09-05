void leaf() {
  __asm__("orw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}