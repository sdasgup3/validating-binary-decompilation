void leaf() {
  __asm__("testw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}