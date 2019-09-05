void leaf() {
  __asm__("salw $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}