void leaf() {
  __asm__("rcrw $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}