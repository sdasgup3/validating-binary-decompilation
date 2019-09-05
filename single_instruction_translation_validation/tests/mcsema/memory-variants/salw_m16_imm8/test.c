void leaf() {
  __asm__("salw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}