void leaf() {
  __asm__("xorw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}