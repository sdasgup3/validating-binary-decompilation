void leaf() {
  __asm__("imulw $0x0, -4(%rbp), %bx");
  }

void main() {
  leaf();
}